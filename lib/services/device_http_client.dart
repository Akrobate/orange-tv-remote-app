import 'package:http/http.dart';
import 'package:query_params/query_params.dart';
import 'package:orange_tv_remote_app/constants/device_http_params.dart';
import 'dart:convert';

class DeviceHttpClient {

  String deviceIp;
  final String devicePort = '8080';


  Future<void> commandModeSimple(int command) async {
    return this.command(DeviceHttpParams.MODE_SIMPLE, command);
  }

  Future<void> command(int mode, int command) async {

    // Example of command to send
    // http://ip_livebox_tv:8080/remoteControl/cmd?operation=01&key=code_touche&mode=numéro_mode

    URLQueryParams queryParams = new URLQueryParams();

    queryParams.append('operation', '01');
    queryParams.append('key', command);
    queryParams.append('mode', mode);

    String queryParamsString = queryParams.toString();

    try{
      await get('http://$deviceIp:$devicePort/remoteControl/cmd?$queryParamsString');
    } catch (error) {
      print(error);
    }
  }


  Future<Map> getInfo() async {

    // Example of command to get device info
    // http://192.168.1.12:8080/remoteControl/cmd?operation=10

    Map response;

    URLQueryParams queryParams = new URLQueryParams();
    queryParams.append('operation',"10");
    String queryParamsString = queryParams.toString();

    try {
      Response response = await get('http://$deviceIp:$devicePort/remoteControl/cmd?$queryParamsString');
      response = jsonDecode(response.body);
    } catch(error) {
      print(error);
    }
    return response;
  }

  void setDeviceIp(String _deviceIp) {
    deviceIp = _deviceIp;
  }

  String getDeviceIp() {
    return deviceIp;
  }

  String getDevicePort() {
    return devicePort;
  }

}
