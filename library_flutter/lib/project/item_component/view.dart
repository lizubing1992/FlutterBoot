import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(
    ProjectChildPageState state, Dispatch dispatch, ViewService viewService) {
  return CustomScrollView(
    slivers: <Widget>[
      new KeepAliveWidget(child: viewService.buildComponent("articleList"))
    ],
  );
}

class KeepAliveWidget extends StatefulWidget {
  final Widget child;

  KeepAliveWidget({@required this.child});

  @override
  State<StatefulWidget> createState() {
    return _KeepAliveWidgetState();
  }
}

class _KeepAliveWidgetState extends State<KeepAliveWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: widget.child,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
