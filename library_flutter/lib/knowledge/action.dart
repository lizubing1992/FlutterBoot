import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/model/model.dart';

enum KnowledgePageAction { loadData }

class KnowledgePageActionCreator {
  static Action loadDataAction(List<KnowLedgeBeanModel> list) {
    return new Action(KnowledgePageAction.loadData, payload: list);
  }
}
