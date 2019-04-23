import 'package:fish_redux/fish_redux.dart';

class ArticleState implements Cloneable<ArticleState> {

  @override
  ArticleState clone() {
    return ArticleState();
  }
}

ArticleState initState(Map<String, dynamic> args) {
  return ArticleState();
}
