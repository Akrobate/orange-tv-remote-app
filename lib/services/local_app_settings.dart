import 'package:shared_preferences/shared_preferences.dart';

class LocalAppSettings {

  static final LocalAppSettings _instance = LocalAppSettings._internal();

  dynamic preferencesInstance;

  static const int SIMPLE_REMOTE_CONTROLLER = 1;
  static const int ADVANCED_REMOTE_CONTROLLER = 2;

  static const int CLEAR_THEME = 1;
  static const int DARK_THEME = 2;

  // String deviceIp
  int typeRemoteSelected;
  // int typeRemoteThemeSelected;
  // bool deviceFound;

  factory LocalAppSettings() {
    return _instance;
  }

  LocalAppSettings._internal();

  void init() async{
    this.preferencesInstance = await SharedPreferences.getInstance();
  }


  _read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'my_int_key';
    final value = prefs.getInt(key) ?? 0;
    print('read: $value');
  }


  _save() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'my_int_key';
    final value = 42;
    prefs.setInt(key, value);
    print('saved $value');
  }
}
