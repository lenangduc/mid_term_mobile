import 'package:flutter/material.dart';

class SimpleDialogExample extends StatefulWidget {
  @override
  _SimpleDialogExampleState createState() => new _SimpleDialogExampleState();
}

class _SimpleDialogExampleState extends State<SimpleDialogExample> {

  SimpleDialog sd;

  _printmethod(val){
    print(val);
  }

  void _method1(){
    sd = new SimpleDialog(
      title: new Text('Title'),
      children: <Widget>[
        new SimpleDialogOption(
          onPressed: () { Navigator.pop(context, _printmethod('d1')); },
          child: new Text('Treasury department'),
        ),
        new SimpleDialogOption(
          onPressed: () { Navigator.pop(context, _printmethod('d1')); },
          child: const Text('State department'),
        ),
      ],
      );
    showDialog(context: context, builder:(context) => sd);
  }

  Widget build(BuildContext context) {
    return new Scaffold(
    appBar: AppBar(title: Text("Simple Dialog Example"), centerTitle: true),
    body: new Center(
      child: new RaisedButton(onPressed: (){_method1();},child: new Text('Show Alert Dailog'),),
    ),
    );
  }
}