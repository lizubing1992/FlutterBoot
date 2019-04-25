import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/model/model.dart';

class ProjectChildPageState implements Cloneable<ProjectChildPageState> {
  int cid;
  List<ArticleModel> list = new List();

  @override
  ProjectChildPageState clone() {
    return ProjectChildPageState()
      ..list = list
      ..cid = cid;
  }
}

ProjectChildPageState initState(Map<String, dynamic> map) {
  return ProjectChildPageState()..cid = map['cid'];
}
