import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

/*
ConstrainedBox(
constraints: BoxConstraints.expand(height: 100),
child: Container(
color: Colors.orange,
child: Padding(padding: EdgeInsets.all(16), child: Text('Box Constraint', style: TextStyle(color: Colors.white),)),
))
*/

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('OrangeTV remote controller'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: double.infinity),
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: IconButton(
                        onPressed: () {},
                        icon: FittedBox(
                          fit: BoxFit.fill,
                          child: Icon(Icons.home),
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    iconSize: 24.0,
                    onPressed: () {},
                    icon: Icon(Icons.home),
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_left),
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_left),
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          // Second list
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
                        icon: FittedBox(
                          fit: BoxFit.fill,
                          child: Icon(Icons.home),
                        ),
                        color: Colors.white,
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
                        icon: FittedBox(
                          fit: BoxFit.fill,
                          child: Icon(Icons.home),
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child:  IconButton(
                        padding: EdgeInsets.all(50.0),
                        onPressed: () {},
                        icon:  Icon(Icons.home),
                        color: Colors.white,
                      ),
                  ),
                ),
                Expanded(
                  child: Container(
                    constraints: BoxConstraints.expand(),
                    // color: Colors.red,
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child:Icon(Icons.home, color: Colors.white),
                      ),
                    ),
                ),
              ],
            ),
          ),



          // Third list
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
                        padding: EdgeInsets.all(0),
                        iconSize: 96.0,
                        icon: FittedBox(
                          fit: BoxFit.fill,
                          child: Icon(Icons.home),
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    constraints: BoxConstraints.expand(),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: IconButton(
                        padding: EdgeInsets.all(0),
                        splashColor: Colors.amberAccent,
                        onPressed: () {},
                        iconSize: 64.0,
                        icon: Icon(Icons.home),
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    constraints: BoxConstraints.expand(),
                    // color: Colors.red,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child:Icon(Icons.home, color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    constraints: BoxConstraints.expand(),
                    // color: Colors.red,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Icon(Icons.home, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )


        ],
      )
    );
  }
}
