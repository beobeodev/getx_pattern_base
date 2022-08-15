import 'package:get/get.dart';
import 'package:getx_pattern_base/modules/base/controllers/index.dart';

class BaseBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BaseController());
    Get.lazyPut(() => AuthController());
  }
}
