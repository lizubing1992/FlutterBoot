import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:library_flutter/home/state.dart';
import 'package:library_flutter/model/model.dart';

class BannerState implements Cloneable<BannerState> {
  List<BannerModel> bannerList = new List();
  PageController pageController = new PageController();
  Timer timer;

  @override
  BannerState clone() {
    return BannerState()
      ..bannerList = bannerList
      ..pageController = pageController
      ..timer = timer;
  }
}

class BannerConnector extends ConnOp<HomePageState, BannerState> {
  @override
  BannerState get(HomePageState state) {
    BannerState bannerState = new BannerState();
    bannerState.bannerList = state.bannerList;
    return bannerState;
  }
}
