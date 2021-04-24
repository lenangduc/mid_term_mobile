import 'package:flutter/material.dart';


class AppbarLeadingActionExample extends StatefulWidget {
  @override
  _AppbarLeadingActionExampleState createState() => new _AppbarLeadingActionExampleState();
}

class _AppbarLeadingActionExampleState extends State<AppbarLeadingActionExample> {

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Appbar Leading Action Example'),
	centerTitle: true,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.arrow_forward),onPressed: (){print('you pressed Arrow Button');},),
          new IconButton(icon: new Icon(Icons.add),onPressed: (){print('you pressed Addition Button');}),
          new IconButton(icon: new Icon(Icons.close),onPressed: (){print('you pressed Close Button');}),
        ],
      ),
    );
  }
}










