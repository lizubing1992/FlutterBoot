import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/navigation/state.dart';

import 'left_listview_adapter/adapter.dart';
import 'state.dart';
import 'view.dart';

class LeftListViewComponent extends Component<LeftListViewState> {
  LeftListViewComponent()
      : super(
          view: buildView,
          dependencies: Dependencies<LeftListViewState>(
              adapter: LeftListViewAdapter(),
              slots: <String, Dependent<LeftListViewState>>{}),
        );
}

class ListViewConnector extends ConnOp<NavigationState, LeftListViewState> {
  @override
  LeftListViewState get(NavigationState state) {
    LeftListViewState newState = new LeftListViewState();
    newState.nameList = state.list.map((mode) {
      print("name${mode.name}");
      return mode.name;
    }).toList();
    return newState;
  }
}
