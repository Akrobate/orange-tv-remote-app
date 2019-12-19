import 'package:flutter/material.dart';
import 'package:orange_tv_remote_app/pages/remote_controller_screen.dart';
import 'package:orange_tv_remote_app/pages/remote_settings_screen.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => RemoteControllerScreen(),
      '/controller_screen': (context) => RemoteControllerScreen(),
      '/settings_screen': (context) => RemoteSettingsScreen(),
    }
));

