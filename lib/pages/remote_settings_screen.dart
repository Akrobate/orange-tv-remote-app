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

  final ipFieldController = TextEditingController();

  initState(){
    super.initState();
    setState(() {

      ipFieldController.text = appSettings.getDeviceIp();

      int typeRemoteSelected = appSettings.getTypeRemoteSelected();
      if (typeRemoteSelected == LocalAppSettings.SIMPLE_REMOTE_CONTROLLER) {
        useSimpleRemoteController = true;
      } else {
        useSimpleRemoteController = false;
      }

      int typeRemoteThemeSelected = appSettings.getTypeRemoteThemeSelected();
      if (typeRemoteThemeSelected == LocalAppSettings.DARK_THEME) {
        useClearTheme = false;
      } else {
        useClearTheme = true;
      }
    });
  }

  void saveTypeRemote() {
    if (useSimpleRemoteController) {
      appSettings.setTypeRemoteSelected(LocalAppSettings.SIMPLE_REMOTE_CONTROLLER);
    } else {
      appSettings.setTypeRemoteSelected(LocalAppSettings.ADVANCED_REMOTE_CONTROLLER);
    }
  }


  void saveThemeRemote() {
    if (useClearTheme) {
      appSettings.setTypeRemoteThemeSelected(LocalAppSettings.CLEAR_THEME);
    } else {
      appSettings.setTypeRemoteThemeSelected(LocalAppSettings.DARK_THEME);
    }
  }

  void dispose() {
    ipFieldController.dispose();
    super.dispose();
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
        child:  SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Utiliser la télécommande simplifiée',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Transform.scale(
                  scale: 2.0,
                  child: Switch(
                    onChanged: (value) {
                      setState(() {
                        useSimpleRemoteController = value;
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
                    fontSize: 22.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Transform.scale(
                  scale: 2.0,
                  child: Switch(
                    onChanged: (value) {
                      setState(() {
                        useClearTheme = value;
                        saveThemeRemote();
                      });
                    },
                    value: useClearTheme,
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                    inactiveTrackColor: Colors.green[900],
                  ),
                ),
                SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: ipFieldController,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                    autocorrect: false,
                    decoration: InputDecoration(
                      hintText: 'Adresse ip',
                      hintStyle: TextStyle(
                        color: Colors.grey[800],
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[800]),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    // onEditingComplete: () {
                    //   print(ipFieldController.text);
                    // }
                    onSubmitted: (deviceIp) {
                      appSettings.setDeviceIp(deviceIp);
                    }
                  ),
                ),
              ]
            ),
          ),
        )
      )
    );
  }
}
