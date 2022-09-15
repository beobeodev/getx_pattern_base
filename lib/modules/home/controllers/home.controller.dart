import 'package:get/get.dart';
import 'package:getx_pattern_base/modules/home/data/repositories/user.repository.dart';

class HomeController extends GetxController {
  final UserRepository userRepository;

  HomeController({required this.userRepository});
}
