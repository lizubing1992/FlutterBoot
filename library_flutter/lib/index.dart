import 'package:flutter/material.dart';
import 'home/home_page.dart';
import 'widget/my_will_pop_scope.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(
        title: "Flutter Demo",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  List<Widget> children;
  List<Widget> tabs;

  @override
  void initState() {
    super.initState();
    children = new List();
    children.add(new HomePage().buildPage(null));

    tabs = new List();
    tabs.add(
      new Tab(
        text: "首页",
        icon: new Icon(Icons.home),
      ),
    );
    tabController = new TabController(length: children.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MyWillPopScope(
      child: Scaffold(
//        drawer: new Drawer(
//          child: DrawerPage().buildPage(null),
//        ),
        body: new TabBarView(
          children: children,
          controller: tabController,
        ),
        bottomNavigationBar: new Container(
          color: Theme
              .of(context)
              .primaryColor,
          child: new TabBar(
            tabs: tabs,
            controller: tabController,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
