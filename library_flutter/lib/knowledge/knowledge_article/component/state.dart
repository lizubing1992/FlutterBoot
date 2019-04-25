import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/model/model.dart';

class KnowledgeArticleState implements Cloneable<KnowledgeArticleState> {
  List<ArticleModel> list = new List();
  int cid;

  @override
  KnowledgeArticleState clone() {
    return KnowledgeArticleState()
      ..list = list
      ..cid = cid;
  }
}

KnowledgeArticleState initState(Map<String, dynamic> map) {
  int cid = map['cid'];
  return KnowledgeArticleState()..cid = cid;
}
