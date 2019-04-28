import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';
import 'package:library_flutter/navigation/action.dart';

Effect<LeftItemState> buildEffect() {
  return combineEffects(<Object, Effect<LeftItemState>>{
    LeftItemAction.onClickLeftItem: _onAction,
  });
}

void _onAction(Action action, Context<LeftItemState> ctx) {
  print("左边的ListView被点击了，发送通知");
  ctx.pageBroadcast(NavigationActionCreator.loadDataAction(action.payload));
}
