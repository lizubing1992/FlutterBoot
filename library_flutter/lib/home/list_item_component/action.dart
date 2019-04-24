import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/model/model.dart';

enum ArticleListItemAction { onGotoWebView }

class ArticleListItemActionCreator {
  static Action onGotoWebViewAction(ArticleModel model) {
    return Action(ArticleListItemAction.onGotoWebView, payload: model);
  }
}
