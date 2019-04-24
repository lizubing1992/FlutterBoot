import 'package:fish_redux/fish_redux.dart';

import '../article_list_component/state.dart';
import '../list_item_component/component.dart';

class HomeListAdapter extends DynamicFlowAdapter<ArticleListState> {
  HomeListAdapter()
      : super(
          pool: <String, Component<Object>>{
            "type_normal": HomeListItemComponent()
          },
          connector: _HomeListConnector(),
        );
}

class _HomeListConnector extends ConnOp<ArticleListState, List<ItemBean>> {
  @override
  List<ItemBean> get(ArticleListState state) {
    if (state.articleList.isNotEmpty) {
      return state.articleList.map((data) {
        return new ItemBean("type_normal", data);
      }).toList();
    } else {
      return <ItemBean>[];
    }
  }

  @override
  void set(ArticleListState state, List<ItemBean> items) {}
}
