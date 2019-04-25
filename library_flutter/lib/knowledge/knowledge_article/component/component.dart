import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/home/article_list_component/component.dart';
import 'package:library_flutter/home/article_list_component/state.dart';

import 'state.dart';
import 'view.dart';

class KnowledgeArticleComponent
    extends Page<KnowledgeArticleState, Map<String, dynamic>> {
  KnowledgeArticleComponent()
      : super(
          initState: initState,
          view: buildView,
          dependencies: Dependencies<KnowledgeArticleState>(
              slots: <String, Dependent<KnowledgeArticleState>>{
                "articleList":
                    KnowLedgeArticleConnect() + ArticleListComponent()
              }),
        );
}
