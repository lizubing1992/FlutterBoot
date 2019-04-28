import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/navigation/right_listview_component/right_listview_adapter/adapter.dart';
import 'package:library_flutter/navigation/state.dart';

import 'effect.dart';
import 'state.dart';
import 'view.dart';

class RightListViewComponent extends Component<RightListViewState> {
  RightListViewComponent()
      : super(
          effect: buildEffect(),
          view: buildView,
          dependencies: Dependencies<RightListViewState>(
              adapter: RightListViewAdapter(),
              slots: <String, Dependent<RightListViewState>>{}),
        );
}

class RightListViewConnect extends ConnOp<NavigationState, RightListViewState> {
  @override
  RightListViewState get(NavigationState state) {
    return RightListViewState()..list = state.list;
  }
}
