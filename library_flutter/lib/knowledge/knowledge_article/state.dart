import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/model/model.dart';

class KnowledgeArticlePageState
    implements Cloneable<KnowledgeArticlePageState> {
  KnowLedgeBeanModel parent;

  List<KnowLedgeBeanModel> children = new List();

  @override
  KnowledgeArticlePageState clone() {
    return KnowledgeArticlePageState()
      ..parent = parent
      ..children = children;
  }
}

KnowledgeArticlePageState initState(Map<String, dynamic> map) {
  List<KnowLedgeBeanModel> children = map["children"];
  KnowLedgeBeanModel parent = map["parent"];
  return KnowledgeArticlePageState()
    ..parent = parent
    ..children = children;
}
