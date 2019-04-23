import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ArticleState> buildEffect() {
  return combineEffects(<Object, Effect<ArticleState>>{
    ArticleAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ArticleState> ctx) {
}
