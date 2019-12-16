import 'package:flutter/material.dart';

class RemoteControllerScreen extends StatefulWidget {

  @override
  _RemoteControllerScreenState createState() => _RemoteControllerScreenState();
}

class _RemoteControllerScreenState extends State<RemoteControllerScreen> {

  Color buttonsColor = Colors.white;
  double buttonsIconSize = 64.0;
  double buttonsEdgeInsetsAll = 8.0;

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
        body: Column(
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
        )
    );
  }
}
