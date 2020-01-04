import 'package:flutter/material.dart';
import 'package:orange_tv_remote_app/pages/remote_controller_screen.dart';
import 'package:orange_tv_remote_app/pages/remote_settings_screen.dart';
import 'package:flutter/services.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();

  const bool debug_mode = false;

  SystemChrome
    .setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      runApp(MaterialApp(
          initialRoute: '/',
          debugShowCheckedModeBanner: debug_mode,
          routes: {
            '/': (context) => RemoteControllerScreen(),
            '/controller_screen': (context) => RemoteControllerScreen(),
            '/settings_screen': (context) => RemoteSettingsScreen(),
          }
      ));
    });
}
