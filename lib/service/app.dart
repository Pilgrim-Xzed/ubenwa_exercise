import 'package:code_test/router/router_controller.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApplicationService {
  final RouterController routerController;

  ApplicationService(this.routerController);
}
