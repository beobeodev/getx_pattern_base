import 'package:get_it/get_it.dart';
import 'package:getx_pattern_base/modules/base/data/datasources/auth.datasource.dart';
import 'package:getx_pattern_base/modules/base/data/repositories/auth.repository.dart';
import 'package:getx_pattern_base/modules/home/data/datasources/local/user.datasource.dart';
import 'package:getx_pattern_base/modules/home/data/datasources/remote/user.datasource.dart';
import 'package:getx_pattern_base/modules/home/data/repositories/user.repository.dart';

final GetIt getIt = GetIt.instance;

void initDependencies() {
  //* DATA SOURCES
  //Auth
  getIt.registerLazySingleton(() => AuthRemoteDataSource());
  // User
  getIt.registerLazySingleton(() => UserLocalDataSource());
  getIt.registerLazySingleton(() => UserRemoteDataSource());

  //* REPOSITORIES
  // User
  getIt.registerLazySingleton(
    () => UserRepository(
      remoteDataSource: getIt.get<UserRemoteDataSource>(),
      localDataSource: getIt.get<UserLocalDataSource>(),
    ),
  );
  // Auth
  getIt.registerLazySingleton(
    () => AuthRepository(remoteDataSource: getIt.get<AuthRemoteDataSource>()),
  );
}
