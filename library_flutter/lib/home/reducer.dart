import 'package:fish_redux/fish_redux.dart';

import '../model/model.dart';
import 'action.dart';
import 'state.dart';

Reducer<HomePageState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomePageState>>{
      HomePageAction.loadBannerData: loadBannerData,
      HomePageAction.loadArticleData: loadArticleData,
    },
  );
}

HomePageState loadBannerData(HomePageState state, Action action) {
  final HomePageState newState = state.clone();
  List<BannerModel> list = action.payload;
  newState.bannerList = list;
  return newState;
}

HomePageState loadArticleData(HomePageState state, Action action) {
  final HomePageState newState = state.clone();
  List<ArticleModel> list = action.payload;
  newState.articleList.addAll(list);
  return newState;
}
