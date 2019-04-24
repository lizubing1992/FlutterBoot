import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/model/model.dart';

import 'effect.dart';
import 'view.dart';

class HomeListItemComponent extends Component<ArticleModel> {
  HomeListItemComponent()
      : super(
          view: buildView,
          effect: buildEffect(),
        );
}
