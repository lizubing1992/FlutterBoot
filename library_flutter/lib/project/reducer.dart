import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ProjectState> buildReducer() {
  return asReducer(
    <Object, Reducer<ProjectState>>{
      ProjectAction.action: _onAction,
    },
  );
}

ProjectState _onAction(ProjectState state, Action action) {
  final ProjectState newState = state.clone();
  return newState;
}
