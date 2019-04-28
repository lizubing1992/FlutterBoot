import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/model/model.dart';

import 'view.dart';

class RightListViewItemComponent extends Component<NavigationModel> {
  RightListViewItemComponent()
      : super(
          view: buildView,
          dependencies: Dependencies<NavigationModel>(
              adapter: null, slots: <String, Dependent<NavigationModel>>{}),
        );
}
