import 'package:fish_redux/fish_redux.dart';

class ArticleListState implements Cloneable<ArticleListState> {

  @override
  ArticleListState clone() {
    return ArticleListState();
  }
}

ArticleListState initState(Map<String, dynamic> args) {
  return ArticleListState();
}
