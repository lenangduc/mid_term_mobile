import 'package:flutter/material.dart';


class DrawerExample extends StatefulWidget {
  @override
  _DrawerExampleState createState() => new _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {


  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Drawer Example'),centerTitle: true),
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
                ),
                new ListTile(
                  title: new Text('Page 2'),
                  trailing: new Icon(Icons.arrow_forward),
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










