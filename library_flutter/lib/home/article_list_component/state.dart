import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/knowledge/knowledge_article/component/state.dart';
import 'package:library_flutter/model/model.dart';
import 'package:library_flutter/project/item_component/state.dart';

import '../state.dart';

///封装一个统一的列表
class ArticleListState implements Cloneable<ArticleListState> {
  List<ArticleModel> articleList = new List();

  @override
  ArticleListState clone() {
    return ArticleListState()..articleList = articleList;
  }
}

class HomeArticleConnect extends ConnOp<HomePageState, ArticleListState> {
  @override
  ArticleListState get(HomePageState state) {
    ArticleListState listState = new ArticleListState();
    listState.articleList = state.articleList;
    return listState;
  }
}


class ProjectArticleConnect extends ConnOp<ProjectChildPageState, ArticleListState> {
  @override
  ArticleListState get(ProjectChildPageState state) {
    ArticleListState listState = new ArticleListState();
    listState.articleList = state.list;
    return listState;
  }
}

class KnowLedgeArticleConnect
    extends ConnOp<KnowledgeArticleState, ArticleListState> {
  @override
  ArticleListState get(KnowledgeArticleState state) {
    ArticleListState listState = new ArticleListState();
    listState.articleList = state.list;
    return listState;
  }
}
