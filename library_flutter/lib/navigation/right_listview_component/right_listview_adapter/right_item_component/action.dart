import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum RightListViewItemAction { action }

class RightListViewItemActionCreator {
  static Action onAction() {
    return const Action(RightListViewItemAction.action);
  }
}
