import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/navigation/right_listview_component/state.dart';

import 'right_item_component/component.dart';

class RightListViewAdapter extends DynamicFlowAdapter<RightListViewState> {
  RightListViewAdapter()
      : super(
          pool: <String, Component<Object>>{
            "normal": RightListViewItemComponent()
          },
          connector: _RightListViewConnector(),
        );
}

class _RightListViewConnector
    extends ConnOp<RightListViewState, List<ItemBean>> {
  @override
  List<ItemBean> get(RightListViewState state) {
    return state.list.map((model) {
      return ItemBean("normal", model);
    }).toList();
  }

  @override
  void set(RightListViewState state, List<ItemBean> items) {}

  @override
  subReducer(reducer) {
    // TODO: implement subReducer
    return super.subReducer(reducer);
  }
}
