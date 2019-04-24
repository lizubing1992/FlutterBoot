import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import '../model/model.dart';

class HomePageState implements Cloneable<HomePageState> {
  List<ArticleModel> articleList = new List();
  List<BannerModel> bannerList = new List();
  ScrollController scrollController = new ScrollController();

  bool isLoading = false;
  int currentPage = 0; //页码

  @override
  HomePageState clone() {
    return HomePageState()
      ..articleList = articleList
      ..bannerList = bannerList
      ..scrollController = scrollController
      ..isLoading = isLoading
      ..currentPage = currentPage;
  }
}

/// homepage页面，这个方法必须写
HomePageState initState(Map<String, dynamic> map) {
  return new HomePageState();
}
