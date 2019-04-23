import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'state.dart';
import 'view.dart';

class ArticleComponent extends Component<ArticleState> {
  ArticleComponent()
      : super(
            effect: buildEffect(),
            view: buildView,
            dependencies: Dependencies<ArticleState>(
                adapter: null,
                slots: <String, Dependent<ArticleState>>{
                }),);

}
