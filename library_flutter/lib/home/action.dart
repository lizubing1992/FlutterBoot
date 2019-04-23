import 'package:fish_redux/fish_redux.dart';

enum HomeAction { action }

class HomeActionCreator {
  static Action onAction() {
    return const Action(HomeAction.action);
  }
}
