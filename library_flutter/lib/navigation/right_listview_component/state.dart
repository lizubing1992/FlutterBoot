import 'package:fish_redux/fish_redux.dart';
import 'package:indexed_list_view/indexed_list_view.dart';
import 'package:library_flutter/model/model.dart';

class RightListViewState implements Cloneable<RightListViewState> {
  List<NavigationModel> list = new List();
  IndexedScrollController scrollController = new IndexedScrollController();

  @override
  RightListViewState clone() {
    return RightListViewState()
      ..list = list
      ..scrollController = scrollController;
  }
}

RightListViewState initState(Map<String, dynamic> args) {
  return RightListViewState();
}
