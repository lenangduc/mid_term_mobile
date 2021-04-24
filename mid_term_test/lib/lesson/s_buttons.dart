import 'package:flutter/material.dart';

class ButtonsExample extends StatefulWidget {
  @override
  _ButtonsExampleState createState() => new _ButtonsExampleState();
}

class _ButtonsExampleState extends State<ButtonsExample> {
  String ptext = 'Click me';

  void method1() {
    setState(() {
      ptext = 'you clicked raised button';
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("Buttons Example"), centerTitle: true),
        body: new Center(
          child: new RaisedButton(
            onPressed: () {
              method1();
            },
            child: new Text(ptext),
          ),
        ));
  }
}
