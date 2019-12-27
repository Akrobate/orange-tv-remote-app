import 'package:orange_tv_remote_app/themes/clear_theme.dart';
import 'package:orange_tv_remote_app/themes/theme_abstract.dart';
import 'package:orange_tv_remote_app/themes/dark_theme.dart';

class ThemeManager {

  ThemeAbstract theme;

  ThemeAbstract getTheme(int themeId) {
    switch (themeId) {
      case ThemeAbstract.DARK_THEME:
        this.theme = DarkTheme();
        break;
      case ThemeAbstract.CLEAR_THEME:
        this.theme = ClearTheme();
        break;
    }
    return this.theme;
  }

}