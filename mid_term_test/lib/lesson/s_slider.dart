import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  @override
  _SliderExampleState createState() => new _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {

  double svalue = 3.0;
  void method1(val){
    setState((){
      svalue = val;
      print('$svalue');
    });

  }

  Widget build(BuildContext context) {
    return new Scaffold(
	appBar: AppBar(title: Text("Slider Example"), centerTitle: true),
        body: new Center(
          child:  new Slider(value: svalue, min: 1.0,max: 10.0, onChanged:(double value){method1(value);}),
        )
    );
  }
}










