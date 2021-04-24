import 'package:flutter/material.dart';

class StatelessExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	appBar: AppBar(title: Text("Stateless Example"),centerTitle: true),
        body: new Container(
          color: Colors.pink,
          child: new Container(
            color: Colors.yellow,
            margin: const EdgeInsets.all(30.0),
          ),
       
       
      ),
    );
  }
}