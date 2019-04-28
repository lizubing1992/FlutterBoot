import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/navigation/left_listview_component/state.dart';

import 'left_item_component/component.dart';
import 'left_item_component/state.dart';

class LeftListViewAdapter extends DynamicFlowAdapter<LeftListViewState> {
  LeftListViewAdapter()
      : super(
          pool: <String, Component<Object>>{"normal": LeftItemComponent()},
          connector: _LeftListViewConnector(),
        );
}

class _LeftListViewConnector extends ConnOp<LeftListViewState, List<ItemBean>> {
  @override
  List<ItemBean> get(LeftListViewState state) {
    int index = 0;
    return state.nameList.map((name) {
      return new ItemBean(
          "normal", LeftItemState(name: name, position: index++));
    }).toList();
  }

  @override
  void set(LeftListViewState state, List<ItemBean> items) {}

  @override
  subReducer(reducer) {
    // TODO: implement subReducer
    return super.subReducer(reducer);
  }
}
