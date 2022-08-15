import 'package:getx_pattern_base/modules/home/data/datasources/index.dart';

class UserRepository {
  final UserLocalDataSource localDataSource;
  final UserRemoteDataSource remoteDataSource;

  UserRepository({
    required this.localDataSource,
    required this.remoteDataSource,
  });
}
