import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:getx_pattern_base/common/router/route_manager.dart';
import 'package:getx_pattern_base/generated/locales.g.dart';
import 'package:getx_pattern_base/modules/base/bindings/base.binding.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Getx Base',
          getPages: RouteManager.pages,
          initialRoute: RouteManager.splash,
          initialBinding: BaseBinding(),
          translationsKeys: AppTranslation.translations,
          fallbackLocale: const Locale('vi', 'VN'),
          locale: Get.deviceLocale,
        );
      },
    );
  }
}
