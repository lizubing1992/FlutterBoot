import 'package:fish_redux/fish_redux.dart';

class ProjectState implements Cloneable<ProjectState> {

  @override
  ProjectState clone() {
    return ProjectState();
  }
}

ProjectState initState(Map<String, dynamic> args) {
  return ProjectState();
}
