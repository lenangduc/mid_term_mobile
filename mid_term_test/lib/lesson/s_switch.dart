import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  @override
  _SwitchExampleState createState() => new _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {

  bool swvalue = false;
  void method2(val){
    setState((){
      swvalue = val;
      print('$swvalue');
    });

  }

  Widget build(BuildContext context) {
    return new Scaffold(
	appBar: AppBar(title: Text("Switch Example"), centerTitle: true),
        body: new Center(
         child:  new Switch(value: swvalue, onChanged: (bool swbool){method2(swbool);},),
        )
    );
  }
}










