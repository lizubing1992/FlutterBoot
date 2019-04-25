import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/model/model.dart';

import 'effect.dart';
import 'view.dart';

class KnowledgeItemComponent extends Component<KnowLedgeBeanModel> {
  KnowledgeItemComponent()
      : super(
          view: buildView,
          effect: buildEffect(),
        );
}
