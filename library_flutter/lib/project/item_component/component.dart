import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/home/article_list_component/component.dart';
import 'package:library_flutter/home/article_list_component/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ProjectChildPageComponent
    extends Page<ProjectChildPageState, Map<String, dynamic>> {
  ProjectChildPageComponent()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<ProjectChildPageState>(
              slots: <String, Dependent<ProjectChildPageState>>{
                "article": ProjectArticleConnect() + ArticleListComponent()
              }),
        );
}
