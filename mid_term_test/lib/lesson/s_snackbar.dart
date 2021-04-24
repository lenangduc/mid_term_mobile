
import 'package:flutter/material.dart';

class SnackBarExample extends StatefulWidget {
  @override
  _SnackBarExampleState createState() => new _SnackBarExampleState();
}

class _SnackBarExampleState extends State<SnackBarExample> {

  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  void _method1(){
    _scaffoldkey.currentState.showSnackBar(new SnackBar(content: new Text('Activated Snackbar')));
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(title: Text("Snack Bar Example"),centerTitle: true),
      body: new Center(
        child: new RaisedButton(onPressed: (){_method1();},child: new Text('Activate Snackbar'),),
      ),
    );
  }
}