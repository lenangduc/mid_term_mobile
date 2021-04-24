import 'package:flutter/material.dart';
import 'package:mid_term_test/lesson/s_buttons.dart';
import 'package:mid_term_test/lesson/s_radio.dart';

class RoutingExample extends StatefulWidget {
  @override
  _RoutingExampleState createState() => new _RoutingExampleState();
}

class _RoutingExampleState extends State<RoutingExample> {


  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Routing Example'),centerTitle: true),
      drawer: new Drawer(
        child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: new Text('Mayuresh Wankhede'),
                  accountEmail: new Text('dummy@email.com'),
                  currentAccountPicture: new CircleAvatar(
                    backgroundColor: Colors.black26,
                    child: new Text('M'),
                  ),
                  decoration: new BoxDecoration(color: Colors.orange),
                ),
                new ListTile(
                  title: new Text('Page 1'),
                  trailing: new Icon(Icons.arrow_forward),
                  onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> RadioExample())),
                ),
                new ListTile(
                  title: new Text('Page 2'),
                  trailing: new Icon(Icons.arrow_forward),
                  onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> ButtonsExample())),

                ),
                new ListTile(
                  title: new Text('Close'),
                  trailing: new Icon(Icons.close),
                  onTap: (){Navigator.pop(context);},
                ),
              ],
            )
      ),
    );
  }
}










