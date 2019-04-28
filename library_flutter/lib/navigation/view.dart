import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:library_flutter/model/model.dart';
import 'package:random_pk/random_pk.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    NavigationState state, Dispatch dispatch, ViewService viewService) {
  return SafeArea(
      child: Scaffold(
    body: Row(
      children: <Widget>[
        new Expanded(
          child: viewService.buildComponent("left_list_view"),
          flex: 1,
        ),
        new Expanded(
          child: viewService.buildComponent("right_list_view"),
          flex: 2,
        )
      ],
    ),
  ));
}

List<Widget> getRightItems(Dispatch dispatch, List<NavigationModel> list) {
  List<Widget> result = new List();
  list.forEach((model) {
    model.articles.forEach((article) {
      result.add(IntrinsicWidth(
        child: GestureDetector(
          onTap: () {
            dispatch(NavigationActionCreator.onGotoWebViewAction(article));
          },
          child: new Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
            height: 50,
            decoration: BoxDecoration(
                color: RandomColor.next(),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Center(
              child: new Text(
                article.title,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      ));
    });
  });
  return result;
}
