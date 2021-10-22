import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../../router/router.dart';

import 'register.dart';

@Named('RegisterRoute')
@injectable
class RegisterRoute extends KRouter {
  RegisterRoute();

  @override
  String path = 'register';

  @override
  Widget? handlerFunc(BuildContext? context, RouteParam params) {
    return Register();
  }
}
