import 'package:flutter/material.dart';

class TabBarTopBottomExample extends StatefulWidget {
  @override
  _TabBarTopBottomExampleState createState() => new _TabBarTopBottomExampleState();
}

class _TabBarTopBottomExampleState extends State<TabBarTopBottomExample> with SingleTickerProviderStateMixin {

  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
	 
          appBar: new AppBar(title: new Text("TabBar Top Bottom Example"),
	    centerTitle: true,
            bottom: new TabBar(
                controller: controller,
                tabs:[
                  new Tab(text: "TAB 1" ,),
                  new Tab(text: "TAB 2",),
                  new Tab(text: "TAB 3",),
                ]),
            backgroundColor: Colors.deepOrange,
          ),
          bottomNavigationBar: new Material(
            color: Colors.deepOrange,
            child: new TabBar(
                controller: controller,
                tabs:[
                  new Tab(text: "TAB 1" ,),
                  new Tab(text: "TAB 2",),
                  new Tab(text: "TAB 3",),
                ]),
          ),

          body:  new TabBarView(
            controller: controller,
            children: <Widget>[
              new Center(child:new Text("Tab1 View 1") ,),
              new Center(child:new Text("Tab1 View 2") ,),
              new Center(child:new Text("Tab1 View 3") ,),
            ],
          ),
        
    );
  }
}



