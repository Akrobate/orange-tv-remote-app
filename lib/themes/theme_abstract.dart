import 'package:flutter/material.dart';


abstract class ThemeAbstract {

  static const int DARK_THEME = 1;
  static const int CLEAR_THEME = 2;

  Color buttonsColor;
  Color remoteControllerBackgroundColor;
  Color toolBarBackgroundColor;

  int themeId;

  Color getButtonsColor() {
    return this.buttonsColor;
  }

  Color getRemoteControllerBackgroundColor() {
    return this.remoteControllerBackgroundColor;
  }

  Color getToolBarBackgroundColor() {
    return this.toolBarBackgroundColor;
  }
}