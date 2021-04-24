import 'package:flutter/material.dart';
import 'package:mid_term_test/lesson/s_alertbox.dart';
import 'package:mid_term_test/lesson/s_appbar_leading_action.dart';
import 'package:mid_term_test/lesson/s_buttons.dart';
import 'package:mid_term_test/lesson/s_checkbox.dart';
import 'package:mid_term_test/lesson/s_container.dart';
import 'package:mid_term_test/lesson/s_drawer.dart';
import 'package:mid_term_test/lesson/s_radio.dart';
import 'package:mid_term_test/lesson/s_routing.dart';
import 'package:mid_term_test/lesson/s_simpledialog.dart';
import 'package:mid_term_test/lesson/s_slider.dart';
import 'package:mid_term_test/lesson/s_snackbar.dart';
import 'package:mid_term_test/lesson/s_stateful.dart';
import 'package:mid_term_test/lesson/s_stateless.dart';
import 'package:mid_term_test/lesson/s_switch.dart';
import 'package:mid_term_test/lesson/s_tabbar_top_bottom.dart';
import 'package:mid_term_test/lesson/s_textfield.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _navigatorButton("Alert Box Example", AlertBoxExample()),
            _navigatorButton("Appbar Leading Action Example", AppbarLeadingActionExample()),
            _navigatorButton("Buttons Example", ButtonsExample()),
            _navigatorButton("Checkbox Example", CheckboxExample()),
            _navigatorButton("Container Example", ContainerExample()),
            _navigatorButton("Drawer Example", DrawerExample()),
            _navigatorButton("Radio Example", RadioExample()),
            _navigatorButton("Routing Example", RoutingExample()),
            _navigatorButton("Simple Dialog Example", SimpleDialogExample()),
            _navigatorButton("Slider Example", SliderExample()),
            _navigatorButton("Snack Bar Example", SnackBarExample()),
            _navigatorButton("Stateful Example", StatefulExample()),
            _navigatorButton("Stateless Example", StatelessExample()),
            _navigatorButton("Switch Example", SwitchExample()),
            _navigatorButton("Tab Bar Top Bottom Example", TabBarTopBottomExample()),
            _navigatorButton("Text Field Example", TextFieldExample()),
          ],
        ));
  }

  Widget _navigatorButton(String title, Widget page) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => page)),
      child: Container(
          height: 40,
          width: double.infinity,
          child: Row(children: [
            SizedBox(width: 10),
            Text(title),
            Spacer(),
            Icon(Icons.arrow_forward_ios_outlined),
            SizedBox(width: 10)
          ])),
    );
  }
}
