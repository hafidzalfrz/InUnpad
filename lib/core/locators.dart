import 'package:get_it/get_it.dart';
import 'package:inunpad/core/services/api.dart';
import 'viewmodels/all_viewmodel.dart';

GetIt locator = GetIt.asNewInstance();

void setupLocator() {
  locator
    ..registerLazySingleton(() => Api())
    ..registerFactory(() => AuthViewModel());
}
