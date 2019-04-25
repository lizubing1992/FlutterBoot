import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/model/model.dart';

class KnowledgePageState implements Cloneable<KnowledgePageState> {
List<KnowLedgeBeanModel> dataList = new List();

  @override
  KnowledgePageState clone() {
    return KnowledgePageState()
    ..dataList = dataList;
  }
}

KnowledgePageState initState(Map<String, dynamic> args) {
  return KnowledgePageState();
}
