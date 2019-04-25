import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<KnowledgePageState> buildReducer() {
  return asReducer(
    <Object, Reducer<KnowledgePageState>>{
      KnowledgePageAction.loadData: loadData,
    },
  );
}

KnowledgePageState loadData(KnowledgePageState state, Action action) {
  final KnowledgePageState newState = state.clone();
  newState.dataList = action.payload;
  return newState;
}
