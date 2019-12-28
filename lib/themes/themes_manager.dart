import 'package:orange_tv_remote_app/themes/clear_theme.dart';
import 'package:orange_tv_remote_app/themes/theme_abstract.dart';
import 'package:orange_tv_remote_app/themes/dark_theme.dart';

class ThemeManager {

  static ThemeAbstract getTheme(int themeId) {

    ThemeAbstract theme;

    switch (themeId) {
      case ThemeAbstract.DARK_THEME:
        theme = DarkTheme();
        break;
      case ThemeAbstract.CLEAR_THEME:
        theme = ClearTheme();
        break;
      default:
        theme = DarkTheme();
    }
    return theme;
  }

}