import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

import '../common/common.dart';
import '../router/router.dart';
import '../repository/router.dart';
import '../screen/main/main.dart';

extension IndexNavigator on PageRouter {
  void navigate(BuildContext context, MainAction? action) {
    if (action is NavigateToIndex) {
      navigateTo(
         Routes.onboarding,
        clearStack: true,
        context: context,
        transitionDuration:
            (action.transition) ? kPageTransitionDuration : Duration.zero,
        transition: (action.transition)
            ? TransitionType.cupertino
            : TransitionType.none,
        params: [!action.transition],
      );
    }
  }
}
