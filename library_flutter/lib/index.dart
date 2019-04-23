import 'package:flutter/material.dart';
import 'home/home_page.dart';

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

  }

  @override
  Widget build(BuildContext context) {
    return null;
  }
}
