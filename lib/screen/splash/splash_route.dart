import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../../router/router.dart';

import 'splash.dart';

@Named('SplashRoute')
@injectable
class SplashRoute extends KRouter {
  SplashRoute();

  @override
  String path = 'splash';

  @override
  Widget? handlerFunc(BuildContext? context, RouteParam params) {
    return Splash();
  }
}
