import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:library_flutter/model/model.dart';
import 'package:library_flutter/navigation/action.dart';
import 'package:random_pk/random_pk.dart';

Widget buildView(NavigationModel model, Dispatch dispatch,
    ViewService viewService) {
  return Container(
    padding: EdgeInsets.all(8),
    child: new Wrap(
      spacing: 15,
      runSpacing: 15,
      children: getItems(model, dispatch),
    ),
  );
}

List<Widget> getItems(NavigationModel model, Dispatch dispatch) {
  List<Widget> result = new List();
  model.articles.forEach((article) {
    result.add(
        IntrinsicWidth(
          child: GestureDetector(
            onTap: () {
              dispatch(NavigationActionCreator.onGotoWebViewAction(article));
            },
            child: new Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
              height: 50,
              decoration: BoxDecoration(
                  color: RandomColor.next(),
                  borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              child: Center(
                child: new Text(
                  article.title,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        )
    );
  });

  return result;
}