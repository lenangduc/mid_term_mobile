import 'package:flutter/material.dart';

class AlertBoxExample extends StatefulWidget {
  @override
  _AlertBoxExampleState createState() => new _AlertBoxExampleState();
}

class _AlertBoxExampleState extends State<AlertBoxExample> {

  void dialog(){
    showDialog(
        context: context,
        builder: (context) => new AlertDialog(
          title: new Text('Warning'),
          content: new Text('You will die if you press on close button'),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.close), onPressed: (){Navigator.pop(context);})
          ],
        )
    );
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Alert Box Example"),centerTitle: true),
      body: new Center(
        child: new RaisedButton(
            onPressed: (){dialog();},
          child: new Text('Activate AlertDialog'),
        ),
      ) ,
    );
  }
}