import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/model/model.dart';

import '../state.dart';

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
