import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(
    HomePageState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: new AppBar(
      title: new Text("玩Flutter"),
    ),
    body: Container(
      child: CustomScrollView(
        controller: state.scrollController,
        slivers: <Widget>[
          new SliverToBoxAdapter(
            child: viewService.buildComponent("banner"),
          ),
          viewService.buildComponent("articleList")
        ],
      ),
    ),
  );
}
