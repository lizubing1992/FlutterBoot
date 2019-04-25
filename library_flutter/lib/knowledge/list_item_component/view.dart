import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:library_flutter/model/model.dart';

import 'action.dart';

Widget buildView(
    KnowLedgeBeanModel state, Dispatch dispatch, ViewService viewService) {
  StringBuffer childrenString = StringBuffer();
  for (KnowLedgeBeanModel child in state.children) {
    childrenString.write(child.name + "");
  }
  return GestureDetector(
    onTap: () {
      dispatch(KnowledgeItemActionCreator.onGotoKnowledgeArticlePage(
          state.children, state));
    },
    child: Row(
      children: <Widget>[
        Expanded(
            child: IntrinsicHeight(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: new Text(
                  "${state.name}",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "${childrenString}",
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                ),
              ),
              new Divider(),
            ],
          ),
        )),
        Center(
          child:
              new IconButton(icon: Icon(Icons.navigate_next), onPressed: () {}),
        )
      ],
    ),
  );
}
