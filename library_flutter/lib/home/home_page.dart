import 'package:fish_redux/fish_redux.dart';

import '../widget/keep_alive_widget.dart';
import 'article_list_component/component.dart';
import 'article_list_component/state.dart';
import 'banner_component/component.dart';
import 'banner_component/state.dart';
import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HomePage extends Page<HomePageState, Map<String, dynamic>> {
  HomePage()
      : super(
          wrapper: keepAliveWrapper,
          initState: initState,
          view: buildView,
          effect: buildEffect(),
          reducer: buildReducer(),
          dependencies: Dependencies<HomePageState>(
            slots: <String, Dependent<HomePageState>>{
              "banner": BannerConnector() + BannerComponent(),
              "articleList": HomeArticleConnect() + ArticleListComponent(),
            },
          ),
        );
}
