import 'package:fish_redux/fish_redux.dart';
import '../article_list_component/state.dart';

class HomeListAdapter extends DynamicFlowAdapter<ArticleListState> {
  HomeListAdapter()
      : super(
          pool: <String, Component<Object>>{
          },
          connector: _HomeListConnector(),
          );
}

class _HomeListConnector extends ConnOp<ArticleListState, List<ItemBean>> {
  @override
  List<ItemBean> get(ArticleListState state) {
    return <ItemBean>[];
  }

  @override
  void set(ArticleListState state, List<ItemBean> items) {
  }

  @override
  subReducer(reducer) {
    // TODO: implement subReducer
    return super.subReducer(reducer);
  }
}
