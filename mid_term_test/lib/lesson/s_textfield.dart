import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  @override
  _TextFieldExampleState createState() => new _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {

  String ptext = '';

  Widget build(BuildContext context) {
    return new Scaffold(
	appBar: AppBar(title: Text("TextField Example"), centerTitle: true),
        body: new Column(
          children: <Widget>[
            new TextField(
                onChanged: (String tval) {
                  setState(() {
                    ptext = tval;
                  });
                }),
            new Text(ptext)
          ],
        )
    );
  }
}










