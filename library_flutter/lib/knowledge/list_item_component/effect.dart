import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:library_flutter/knowledge/knowledge_article/page.dart';
import 'package:library_flutter/model/model.dart';

import 'action.dart';

Effect<KnowLedgeBeanModel> buildEffect() {
  return combineEffects(<Object, Effect<KnowLedgeBeanModel>>{
    KnowledgeItemAction.onGotoKnowledgeArticlePage: _onGotoKnowledgeArticlePage,
  });
}

void _onGotoKnowledgeArticlePage(
    Action action, Context<KnowLedgeBeanModel> ctx) {
  Navigator.of(ctx.context).push(new MaterialPageRoute(builder: (context) {
    return KnowledgeArticlePagePage().buildPage(action.payload);
  }));
}
