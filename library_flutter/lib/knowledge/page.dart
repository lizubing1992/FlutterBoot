import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/widget/keep_alive_widget.dart';

import 'effect.dart';
import 'list_adapter/adapter.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class KnowledgePage extends Page<KnowledgePageState, Map<String, dynamic>> {
  KnowledgePage()
      : super(
            wrapper: keepAliveWrapper,
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<KnowledgePageState>(
              adapter: KnowledgeListAdapter(),
            ));
}
