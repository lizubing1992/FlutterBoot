import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:library_flutter/model/model.dart';
import 'package:library_flutter/repository/http_repository.dart';

import 'action.dart';
import 'state.dart';

Effect<NavigationState> buildEffect() {
  return combineEffects(<Object, Effect<NavigationState>>{
    Lifecycle.initState: _init,
    NavigationAction.loadData: _onGotoWebViewAction,
  });
}

void _init(Action action, Context<NavigationState> ctx) {
  WanHttpRepository.getNavigationList().then((List<NavigationModel> list) {
    if (!ctx.isDisposed) {
      print("list${list.length}");
      ctx.dispatch(NavigationActionCreator.loadDataAction(list));
    }
  });
}

void _onGotoWebViewAction(Action action, Context<NavigationState> ctx) {
//  Navigator.of(ctx.context).push(new MaterialPageRoute(builder: (context) {
//    NavigationModel article = action.payload;
//    return WebViewPage(article.link,article.title);
//  }));
}
