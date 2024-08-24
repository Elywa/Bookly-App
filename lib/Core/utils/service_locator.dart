import 'package:bookly_app/Core/utils/api_services.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(dio: Dio()));

  getIt.registerSingleton<HomeRepoImple>(
    HomeRepoImple(
      api: getIt.get<ApiServices>(),
    ),
  );
}
