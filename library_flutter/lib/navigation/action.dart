import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/model/model.dart';

enum NavigationAction { loadData, onGotoWebView, onClickLeftItem }

class NavigationActionCreator {
  static Action loadDataAction(List<NavigationModel> list) {
    return Action(NavigationAction.loadData, payload: list);
  }

  static Action onGotoWebViewAction(ArticleModel model) {
    return Action(NavigationAction.onGotoWebView, payload: model);
  }

  static Action onClickLeftItemAction(int position) {
    return Action(NavigationAction.onClickLeftItem, payload: position);
  }
}
