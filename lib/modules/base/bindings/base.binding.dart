import 'package:get/get.dart';
import 'package:getx_pattern_base/injector.dart';
import 'package:getx_pattern_base/modules/base/controllers/base_controller.export.dart';
import 'package:getx_pattern_base/modules/base/data/repositories/auth.repository.dart';

class BaseBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BaseController(), permanent: true);
    Get.put(
      AuthController(
        authRepository: getIt.get<AuthRepository>(),
      ),
      permanent: true,
    );
  }
}
