import 'package:book/Features/home/data/repos/home_repos_impl.dart';
import 'package:book/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeReposImpl>(
    HomeReposImpl(
     getIt.get<ApiServices>(),
    ),
  );
}

