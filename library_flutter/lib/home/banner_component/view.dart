import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:library_flutter/model/model.dart';

import 'state.dart';

Widget buildView(
    BannerState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    height: 250,
    child: getPageView(state.bannerList, state.pageController),
  );
}

PageView getPageView(List<BannerModel> list, PageController pageController) {
  Timer.periodic(Duration(seconds: 2), (time) {
    /**
     * 要pageController.hasClients判断，不然会报错
     * https://github.com/jlouage/flutter-carousel-pro/issues/21
     */
    if (pageController.hasClients) {
//      pageController.nextPage(
//          duration: Duration(milliseconds: 500), curve: Curves.ease);
    }
  });

  return new PageView.builder(
    controller: pageController,
    itemCount: list.length,
    itemBuilder: (context, index) {
      return getItemView(list[index].imagePath,
          "${pageController.page.round() + 1} /${list.length - 2}");
    },
    onPageChanged: (int index) {
      //      if (index == 0) {
//        pageController.jumpToPage(list.length - 2);
//      } else if (index == list.length - 1) {
//        pageController.jumpToPage(1);
//      }
    },
  );
}

Widget getItemView(String imagePath, String text) {
  return new Container(
    child: Stack(
      children: <Widget>[
        new Positioned.fill(
          child: new Image.network(
            imagePath,
            fit: BoxFit.fill,
          ),
        )
      ],
    ),
  );
}
