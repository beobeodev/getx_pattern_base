import 'package:get/get.dart';
import 'package:getx_pattern_base/injector.dart';
import 'package:getx_pattern_base/modules/base/data/repositories/auth.repository.dart';
import 'package:getx_pattern_base/modules/login/controllers/login.controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LoginController(authRepository: getIt.get<AuthRepository>()),
    );
  }
}
