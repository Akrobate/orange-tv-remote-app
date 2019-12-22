import 'package:flutter/material.dart';
import 'package:orange_tv_remote_app/remote_controller_widgets/advanced_remote_controller.dart';
import 'package:orange_tv_remote_app/remote_controller_widgets/simple_remote_controller.dart';

class RemoteControllerScreen extends StatefulWidget {

  @override
  _RemoteControllerScreenState createState() => _RemoteControllerScreenState();
}

class _RemoteControllerScreenState extends State<RemoteControllerScreen> {

  Color buttonsColor = Colors.white;
  double buttonsIconSize = 64.0;
  double buttonsEdgeInsetsAll = 8.0;

  int templateType = 2;

  //
  @override
  Widget build(BuildContext context) {
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
        body: templateType == 1 ? AdvancedRemoteController() : SimpleRemoteController(),
    );
  }
}
