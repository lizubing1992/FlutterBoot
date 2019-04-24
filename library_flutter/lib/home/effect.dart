import 'package:fish_redux/fish_redux.dart';

import '../repository/repository.dart';
import 'action.dart';
import 'state.dart';

Effect<HomePageState> buildEffect() {
  return combineEffects(<Object, Effect<HomePageState>>{
    Lifecycle.initState: _init,
  });
}

///获取网络数据
void _init(Action action, Context<HomePageState> ctx) async {
  ///获取banner数据
  WanHttpRepository.getBannerList().then((list) {
    if (!ctx.isDisposed) {
      ctx.dispatch(HomePageActionCreator.loadBannerDataAction(list));
    }
  });

  ///获取主页的列表数据
  WanHttpRepository.getHomeArticleList(page: ctx.state.currentPage++)
      .then((list) {
    if (!ctx.isDisposed) {
      ctx.dispatch(HomePageActionCreator.loadArticleDataAction(list));
    }
  });

  ctx.state.scrollController.addListener(() {
    if (ctx.state.scrollController.position.pixels >=
        ctx.state.scrollController.position.maxScrollExtent - 100) {
      if (!ctx.state.isLoading) {
        ctx.state.isLoading = true;
        //进行loadMore操作
        WanHttpRepository.getHomeArticleList(page: ctx.state.currentPage++)
            .then((list) {
          ctx.state.isLoading = false;
          if (!ctx.isDisposed) {
            ctx.dispatch(HomePageActionCreator.loadArticleDataAction(list));
          }
        });
      }
    }
  });
}
