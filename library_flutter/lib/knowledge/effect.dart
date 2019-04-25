import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/repository/repository.dart';

import 'action.dart';
import 'state.dart';

Effect<KnowledgePageState> buildEffect() {
  return combineEffects(<Object, Effect<KnowledgePageState>>{
    Lifecycle.initState: _init,
  });
}

_init(Action action, Context<KnowledgePageState> ctx) {
  WanHttpRepository.getKnowLedgeList().then((list) {
    if (!ctx.isDisposed) {
      ctx.dispatch(KnowledgePageActionCreator.loadDataAction(list));
    }
  });
}
