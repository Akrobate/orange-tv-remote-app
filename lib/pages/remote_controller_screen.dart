import 'package:flutter/material.dart';
import 'package:orange_tv_remote_app/remote_controller_widgets/advanced_remote_controller.dart';
import 'package:orange_tv_remote_app/remote_controller_widgets/simple_remote_controller.dart';
import 'package:orange_tv_remote_app/services/local_app_settings.dart';

class RemoteControllerScreen extends StatefulWidget {

  @override
  _RemoteControllerScreenState createState() => _RemoteControllerScreenState();
}

class _RemoteControllerScreenState extends State<RemoteControllerScreen> {

  final LocalAppSettings appSettings = LocalAppSettings();

  Color buttonsColor = Colors.white;
  double buttonsIconSize = 64.0;
  double buttonsEdgeInsetsAll = 8.0;

  int templateType = 1;

  initState() {
    super.initState();
    loadAppSettings();
  }

  void loadAppSettings() async {
    await appSettings.init();
    setState(() {
      templateType = appSettings.getTypeRemoteSelected();
    });
  }

  @override
  Widget build(BuildContext context) {

    templateType = appSettings.getTypeRemoteSelected();

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('OrangeTV télécommande'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
          actions: <Widget>[
            // action button
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print('Settings clics');
                Navigator.pushNamed(context, '/settings_screen');
              },
            ),
          ],
        ),
        body: templateType == 1 ? SimpleRemoteController() : AdvancedRemoteController(),
    );
  }
}
