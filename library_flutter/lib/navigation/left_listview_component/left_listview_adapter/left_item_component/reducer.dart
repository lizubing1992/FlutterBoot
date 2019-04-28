import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LeftItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<LeftItemState>>{
      LeftItemAction.onClickLeftItem: _onAction,
    },
  );
}

LeftItemState _onAction(LeftItemState state, Action action) {
  final LeftItemState newState = state.clone();
  return newState;
}
