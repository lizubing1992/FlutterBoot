import 'package:fish_redux/fish_redux.dart';

class BannerState implements Cloneable<BannerState> {

  @override
  BannerState clone() {
    return BannerState();
  }
}

BannerState initState(Map<String, dynamic> args) {
  return BannerState();
}
