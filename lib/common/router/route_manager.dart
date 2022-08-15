import 'package:get/route_manager.dart';
import 'package:getx_pattern_base/modules/home/bindings/home.binding.dart';
import 'package:getx_pattern_base/modules/home/views/home.view.dart';

abstract class RouteManager {
  static const String splash = '/splash';
  static const String home = '/home';

  static List<GetPage> pages = [
    GetPage(
      name: home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    )
  ];
}
