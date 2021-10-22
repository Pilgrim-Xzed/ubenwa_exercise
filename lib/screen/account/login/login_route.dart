import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../../router/router.dart';

import 'login.dart';

@Named('LoginRoute')
@injectable
class LoginRoute extends KRouter {
  LoginRoute();

  @override
  String path = 'login';

  @override
  Widget? handlerFunc(BuildContext? context, RouteParam params) {
    return Login();
  }
}
