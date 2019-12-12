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
                    constraints: BoxConstraints(minWidth: double.infinity, minHeight: double.infinity),
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
          )
        ],
      )
    );
  }
}
