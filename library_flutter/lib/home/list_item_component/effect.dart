import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:library_flutter/model/model.dart';
import 'package:library_flutter/widget/web_view_page.dart';

import 'action.dart';

Effect<ArticleModel> buildEffect() {
  return combineEffects(<Object, Effect<ArticleModel>>{
    ArticleListItemAction.onGotoWebView: _onGotoWebPage,
  });
}

void _onGotoWebPage(Action action, Context<ArticleModel> ctx) {
  Navigator.of(ctx.context).push(new MaterialPageRoute(builder: (context) {
    ArticleModel article = action.payload;
    return WebViewPage(article.link, article.title);
  }));
}
