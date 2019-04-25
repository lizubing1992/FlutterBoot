import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(KnowledgeArticleState state, Dispatch dispatch, ViewService viewService) {
  return new CustomScrollView(
    slivers: <Widget>[
      viewService.buildComponent("articleList")
    ],
  );
}
