import 'package:flutter/material.dart';
import 'package:orange_tv_remote_app/services/local_app_settings.dart';

class RemoteSettingsScreen extends StatefulWidget {
  @override
  _RemoteSettingsScreenState createState() => _RemoteSettingsScreenState();
}

class _RemoteSettingsScreenState extends State<RemoteSettingsScreen> {

  final LocalAppSettings appSettings = LocalAppSettings();
  bool useClearTheme = false;
  bool useSimpleRemoteController = false;

  initState(){
    super.initState();
    setState(() {
      int typeRemoteSelected = appSettings.getTypeRemoteSelected();
      if (typeRemoteSelected == 1) {
        useSimpleRemoteController = true;
      } else {
        useSimpleRemoteController = false;
      }
    });
  }

  void saveTypeRemote() {
    if (useSimpleRemoteController) {
      appSettings.setTypeRemoteSelected(1);
    } else {
      appSettings.setTypeRemoteSelected(2);
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Paramètres'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Utiliser la télécommande simplifiée',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                )
            ),
            Transform.scale(
              scale: 2.0,
              child: Switch(
                onChanged: (value) {
                  setState(() {
                    useSimpleRemoteController = value;
                    print('useSimpleRemoteController');
                    print(useSimpleRemoteController);
                    saveTypeRemote();
                  });
                },
                value: useSimpleRemoteController,
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
                inactiveTrackColor: Colors.green[900],
              ),
            ),
            SizedBox(height: 40.0),
            Text(
                'Télécommande sur fond clair',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                )
            ),
            Transform.scale(
              scale: 2.0,
              child: Switch(
                onChanged: (value) {
                  setState(() {
                    useClearTheme = value;
                  });
                },
                value: useClearTheme,
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
                inactiveTrackColor: Colors.green[900],
              ),
            ),

          ]
        )
      )
    );
  }
}
