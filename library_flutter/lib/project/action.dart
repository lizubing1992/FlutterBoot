import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ProjectAction { action }

class ProjectActionCreator {
  static Action onAction() {
    return const Action(ProjectAction.action);
  }
}
