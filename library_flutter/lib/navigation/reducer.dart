import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NavigationState> buildReducer() {
  return asReducer(
    <Object, Reducer<NavigationState>>{
      NavigationAction.loadData: _onAction,
    },
  );
}

NavigationState _onAction(NavigationState state, Action action) {
  final NavigationState newState = state.clone();
  newState.list = action.payload;
  print("_onAction:${newState.list.length}");
  return newState;
}
