import 'package:fish_redux/fish_redux.dart';
import 'package:library_flutter/model/model.dart';
class NavigationState implements Cloneable<NavigationState> {
  List<NavigationModel> list = new List();

  @override
  NavigationState clone() {
    return NavigationState()
    ..list = list;
  }
}

NavigationState initState(Map<String, dynamic> args) {
  return NavigationState();
}
