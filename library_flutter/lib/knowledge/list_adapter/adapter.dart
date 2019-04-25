import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/knowledge/list_item_component/component.dart';
import 'package:library_flutter/knowledge/state.dart';

class KnowledgeListAdapter extends DynamicFlowAdapter<KnowledgePageState> {
  KnowledgeListAdapter()
      : super(
          pool: <String, Component<Object>>{
            "normal_type": KnowledgeItemComponent()
          },
          connector: _KnowledgeListConnector(),
        );
}

class _KnowledgeListConnector
    extends ConnOp<KnowledgePageState, List<ItemBean>> {
  @override
  List<ItemBean> get(KnowledgePageState state) {
    return state.dataList.map((data) {
      return ItemBean("normal_type", data);
    }).toList();
  }

  @override
  void set(KnowledgePageState state, List<ItemBean> items) {}

  @override
  subReducer(reducer) {
    return super.subReducer(reducer);
  }
}
