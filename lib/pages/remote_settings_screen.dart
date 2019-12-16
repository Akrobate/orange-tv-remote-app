import 'package:flutter/material.dart';

class RemoteSettingsScreen extends StatefulWidget {
  @override
  _RemoteSettingsScreenState createState() => _RemoteSettingsScreenState();
}

class _RemoteSettingsScreenState extends State<RemoteSettingsScreen> {
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
    );
  }
}
