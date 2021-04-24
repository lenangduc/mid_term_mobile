import 'package:flutter/material.dart';

class StatefulExample extends StatefulWidget {
  @override
  _StatefulExampleState createState() => new _StatefulExampleState();
}


class _StatefulExampleState extends State<StatefulExample>  {

  String ttext ='';

  @override
  void initState() {
    // TODO: implement initState
    ttext = 'click on this button';
    super.initState();
  }

void method1(){
    setState((){
      ttext = 'The text is been Changed';
    });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Example"), centerTitle: true),
      body: new Center(
        child: new RaisedButton(onPressed:(){method1();},child: new Text(ttext),),
      ),
    );
  }
}
