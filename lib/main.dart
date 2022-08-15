import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:getx_pattern_base/app.dart';
import 'package:getx_pattern_base/common/constants/asset_paths.dart';
import 'package:getx_pattern_base/injector.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await initApp();
  runApp(const MyApp());
}

Future<void> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  initDependencies();
  await dotenv.load(fileName: AssetPaths.dotEnv);
}
