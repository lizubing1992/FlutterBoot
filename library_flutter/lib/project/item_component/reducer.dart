import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/model/model.dart';

import 'action.dart';
import 'state.dart';

Reducer<ProjectChildPageState> buildReducer() {
  return asReducer(
    <Object, Reducer<ProjectChildPageState>>{
      ProjectChildPageAction.loadData: _loadDataAction,
    },
  );
}

ProjectChildPageState _loadDataAction(
    ProjectChildPageState state, Action action) {
  final ProjectChildPageState newState = state.clone();
  List<ArticleModel> list = action.payload;
  newState.list = list;
  return newState;
}
