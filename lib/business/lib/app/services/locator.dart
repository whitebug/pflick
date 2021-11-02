import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

import '../../business.dart';

final GetIt getIt = GetIt.I;

Future locatorSetup() async {
  // Repository
  getIt.registerLazySingleton<Repository>(
        () => RepositoryImpl(dio: getIt()),
  );

  // External
  getIt.registerLazySingleton<Dio>(() => Dio());
}
