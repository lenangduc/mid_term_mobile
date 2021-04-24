import 'package:flutter/material.dart';

class RadioExample extends StatefulWidget {
  @override
  _RadioExampleState createState() => new _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {

  int  radiovalue = 0;
  void method4(val){
    setState((){
      radiovalue = val;
      print('$radiovalue');
    });

  }

  Widget build(BuildContext context) {
    return new Scaffold(
	appBar: AppBar(title: Text("Radio Example"), centerTitle: true),
        body: new Column(
          children: <Widget>[
            new Radio(value: 1, groupValue: radiovalue,  onChanged:(int change){method4(change);},),
            new Radio(value: 2, groupValue: radiovalue,  onChanged:(int change){method4(change);},),
            new Radio(value: 3, groupValue: radiovalue,  onChanged:(int change){method4(change);},),
          ],
        )
    );
  }
}










