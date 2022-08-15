import 'package:get/get.dart';
import 'package:getx_pattern_base/injector.dart';
import 'package:getx_pattern_base/modules/home/controllers/home.controller.dart';
import 'package:getx_pattern_base/modules/home/data/repositories/user.repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(userRepository: getIt.get<UserRepository>()),
    );
  }
}
