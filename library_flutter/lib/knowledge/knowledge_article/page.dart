import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/knowledge/knowledge_article/state.dart';
import 'package:library_flutter/project/item_component/component.dart';
import 'package:library_flutter/project/item_component/state.dart';

import 'state.dart' as state;
import 'view.dart';

class KnowledgeArticlePagePage
    extends Page<KnowledgeArticlePageState, Map<String, dynamic>> {
  KnowledgeArticlePagePage()
      : super(
          initState: state.initState,
          view: buildView,
          dependencies: Dependencies<KnowledgeArticlePageState>(
              slots: <String, Dependent<KnowledgeArticlePageState>>{
                "list": KnowLedgeConnect() + ProjectChildPageComponent()
              }),
        );
}

class KnowLedgeConnect
    extends ConnOp<KnowledgeArticlePageState, ProjectChildPageState> {
  @override
  ProjectChildPageState get(KnowledgeArticlePageState state) {
    ProjectChildPageState projectChildPageState = new ProjectChildPageState();
    return projectChildPageState;
  }
}
