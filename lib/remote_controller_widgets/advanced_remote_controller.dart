import 'package:flutter/material.dart';
import 'package:orange_tv_remote_app/services/device_http_client.dart';
import 'package:orange_tv_remote_app/constants/device_http_params.dart';
import 'package:orange_tv_remote_app/services/local_app_settings.dart';

class AdvancedRemoteController extends StatelessWidget {

  final LocalAppSettings appSettings = LocalAppSettings();
  final Color buttonsColor = Colors.white;
  final double buttonsIconSize = 64.0;
  final double buttonsEdgeInsetsAll = 8.0;
  final DeviceHttpClient device;

  AdvancedRemoteController({
    this.device,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[

        // 1 line of buttons
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: IconButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.BACK);
                      },
                      padding: EdgeInsets.all(buttonsEdgeInsetsAll),
                      iconSize: buttonsIconSize,
                      icon: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(Icons.arrow_back),
                      ),
                      color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: IconButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.UP);
                      },
                      padding: EdgeInsets.all(buttonsEdgeInsetsAll),
                      iconSize: buttonsIconSize,
                      icon: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(Icons.keyboard_arrow_up),
                      ),
                      color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: IconButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.RECORD);
                      },
                      padding: EdgeInsets.all(buttonsEdgeInsetsAll),
                      iconSize: buttonsIconSize,
                      icon: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(Icons.radio_button_checked),
                      ),
                      color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: IconButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.VOLUME_UP);
                      },
                      padding: EdgeInsets.all(buttonsEdgeInsetsAll),
                      iconSize: buttonsIconSize,
                      icon: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(Icons.volume_up),
                      ),
                      color: buttonsColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        // 2 line of buttons
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: IconButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.LEFT);
                      },
                      padding: EdgeInsets.all(buttonsEdgeInsetsAll),
                      iconSize: buttonsIconSize,
                      icon: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(Icons.chevron_left),
                      ),
                      color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: FlatButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.OK);
                      },
                      padding: EdgeInsets.all(0),
                      child: Text(
                          'Ok',
                          style: TextStyle(
                            fontSize: buttonsIconSize / 1.2,
                            color: buttonsColor,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                      // color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: IconButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.RIGHT);
                      },
                      padding: EdgeInsets.all(buttonsEdgeInsetsAll),
                      iconSize: buttonsIconSize,
                      icon: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(Icons.chevron_right),
                      ),
                      color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: IconButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.VOLUME_DOWN);
                      },
                      padding: EdgeInsets.all(buttonsEdgeInsetsAll),
                      iconSize: buttonsIconSize,
                      icon: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(Icons.volume_down),
                      ),
                      color: buttonsColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),


        // 3 line of buttons
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: FlatButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.MENU);
                      },
                      padding: EdgeInsets.all(0),
                      child: Text(
                          'menu',
                          style: TextStyle(
                            fontSize: buttonsIconSize / 2.5,
                            color: buttonsColor,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                      // color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: IconButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.DOWN);
                      },
                      padding: EdgeInsets.all(buttonsEdgeInsetsAll),
                      iconSize: buttonsIconSize,
                      icon: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(Icons.keyboard_arrow_down),
                      ),
                      color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: FlatButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.VOD);
                      },
                      padding: EdgeInsets.all(0),
                      child: Text(
                          'VOD',
                          style: TextStyle(
                            fontSize: buttonsIconSize / 3,
                            color: buttonsColor,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                      // color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: IconButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.VOLUME_MUTE);
                      },
                      padding: EdgeInsets.all(buttonsEdgeInsetsAll),
                      iconSize: buttonsIconSize,
                      icon: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(Icons.volume_off),
                      ),
                      color: buttonsColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),


        // 4 line of buttons
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: FlatButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.CHANNEL_1);
                      },
                      padding: EdgeInsets.all(0),
                      child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: buttonsIconSize,
                            color: buttonsColor,
                          )
                      ),
                      // color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: FlatButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.CHANNEL_2);
                      },
                      padding: EdgeInsets.all(0),
                      child: Text(
                          '2',
                          style: TextStyle(
                            fontSize: buttonsIconSize,
                            color: buttonsColor,
                          )
                      ),
                      // color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: FlatButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.CHANNEL_3);
                      },
                      padding: EdgeInsets.all(0),
                      child: Text(
                          '3',
                          style: TextStyle(
                            fontSize: buttonsIconSize,
                            color: buttonsColor,
                          )
                      ),
                      // color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: IconButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.FAST_FORWARD);
                      },
                      padding: EdgeInsets.all(buttonsEdgeInsetsAll),
                      iconSize: buttonsIconSize,
                      icon: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(Icons.fast_forward),
                      ),
                      color: buttonsColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),


        // 5 line of buttons
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: FlatButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.CHANNEL_4);
                      },
                      padding: EdgeInsets.all(0),
                      child: Text(
                          '4',
                          style: TextStyle(
                            fontSize: buttonsIconSize,
                            color: buttonsColor,
                          )
                      ),
                      // color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: FlatButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.CHANNEL_5);
                      },
                      padding: EdgeInsets.all(0),
                      child: Text(
                          '5',
                          style: TextStyle(
                            fontSize: buttonsIconSize,
                            color: buttonsColor,
                          )
                      ),
                      // color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: FlatButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.CHANNEL_6);
                      },
                      padding: EdgeInsets.all(0),
                      child: Text(
                          '6',
                          style: TextStyle(
                            fontSize: buttonsIconSize,
                            color: buttonsColor,
                          )
                      ),
                      // color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: IconButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.PLAY_PAUSE);
                      },
                      padding: EdgeInsets.all(buttonsEdgeInsetsAll),
                      iconSize: buttonsIconSize,
                      icon: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(Icons.play_arrow),
                      ),
                      color: buttonsColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),


        // 6 line of buttons
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: FlatButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.CHANNEL_7);
                      },
                      padding: EdgeInsets.all(0),
                      child: Text(
                          '7',
                          style: TextStyle(
                            fontSize: buttonsIconSize,
                            color: buttonsColor,
                          )
                      ),
                      // color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: FlatButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.CHANNEL_8);
                      },
                      padding: EdgeInsets.all(0),
                      child: Text(
                          '8',
                          style: TextStyle(
                            fontSize: buttonsIconSize,
                            color: buttonsColor,
                          )
                      ),
                      // color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: FlatButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.CHANNEL_9);
                      },
                      padding: EdgeInsets.all(0),
                      child: Text(
                          '9',
                          style: TextStyle(
                            fontSize: buttonsIconSize,
                            color: buttonsColor,
                          )
                      ),
                      // color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: IconButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.FAST_BACKWARD);
                      },
                      padding: EdgeInsets.all(buttonsEdgeInsetsAll),
                      iconSize: buttonsIconSize,
                      icon: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(Icons.fast_rewind),
                      ),
                      color: buttonsColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),


        // 7 line of buttons
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: IconButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.CHANNEL_NEXT);
                      },
                      padding: EdgeInsets.all(buttonsEdgeInsetsAll),
                      iconSize: buttonsIconSize,
                      icon: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(Icons.add_to_queue),
                      ),
                      color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: FlatButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.CHANNEL_0);
                      },
                      padding: EdgeInsets.all(0),
                      child: Text(
                          '0',
                          style: TextStyle(
                            fontSize: buttonsIconSize,
                            color: buttonsColor,
                          )
                      ),
                      // color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: IconButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.CHANNEL_PREVIOUS);
                      },
                      padding: EdgeInsets.all(buttonsEdgeInsetsAll),
                      iconSize: buttonsIconSize,
                      icon: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(Icons.remove_from_queue),
                      ),
                      color: buttonsColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: IconButton(
                      onPressed: () {
                        device.commandModeSimple(DeviceHttpParams.ON_OFF);
                      },
                      padding: EdgeInsets.all(buttonsEdgeInsetsAll),
                      iconSize: buttonsIconSize,
                      icon: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(Icons.power_settings_new),
                      ),
                      color: buttonsColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
