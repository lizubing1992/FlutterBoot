import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/widget/keep_alive_widget.dart';

import 'effect.dart';
import 'left_listview_component/component.dart';
import 'reducer.dart';
import 'right_listview_component/component.dart';
import 'state.dart';
import 'view.dart';

class NavigationPage extends Page<NavigationState, Map<String, dynamic>> {
  NavigationPage()
      : super(
          wrapper: keepAliveWrapper,
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<NavigationState>(
              slots: <String, Dependent<NavigationState>>{
                "left_list_view": ListViewConnector() + LeftListViewComponent(),
                "right_list_view":
                    RightListViewConnect() + RightListViewComponent()
              }),
          middleware: <Middleware<NavigationState>>[],
        );
}
