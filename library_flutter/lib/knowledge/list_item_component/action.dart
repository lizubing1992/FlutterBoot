import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/model/model.dart';

enum KnowledgeItemAction { onGotoKnowledgeArticlePage }

class KnowledgeItemActionCreator {
  static Action onGotoKnowledgeArticlePage(
      List<KnowLedgeBeanModel> children, KnowLedgeBeanModel parent) {
    Map map = {"children": children, "parent": parent};
    return new Action(KnowledgeItemAction.onGotoKnowledgeArticlePage,
        payload: map);
  }
}
