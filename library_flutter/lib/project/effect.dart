import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ProjectState> buildEffect() {
  return combineEffects(<Object, Effect<ProjectState>>{
    ProjectAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ProjectState> ctx) {
}
