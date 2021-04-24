import 'package:flutter/material.dart';

class CheckboxExample extends StatefulWidget {
  @override
  _CheckboxExampleState createState() => new _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool checkvalue = false;

  void method3(val) {
    setState(() {
      checkvalue = val;
      print('$checkvalue');
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("Checkbox Example"), centerTitle: true),
        body: new Center(
          child: new Checkbox(
            value: checkvalue,
            onChanged: (bool checkbool) {
              method3(checkbool);
            },
          ),
        ));
  }
}
