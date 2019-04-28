import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/navigation/action.dart';

import 'state.dart';

Effect<RightListViewState> buildEffect() {
  return combineEffects(<Object, Effect<RightListViewState>>{
    Lifecycle.initState: _init,
    NavigationAction.onClickLeftItem: _onClickLeftItem,
  });
}

void _init(Action action, Context<RightListViewState> ctx) {
  ctx.state.scrollController.addListener(() {
    print("${ctx.state.scrollController.startIndex}");
    print("${ctx.state.scrollController.position}");
  });
}

void _onClickLeftItem(Action action, Context<RightListViewState> ctx) {
  print("右边的ListView收到消息，左边的ListView点击了：${action.payload}");
  ctx.state.scrollController.animateToIndex(action.payload);
}
