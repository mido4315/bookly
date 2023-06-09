import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/home screen/data/repos/home_repo_impl.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      APIService(
        Dio(),
      ),
    ),
  );
}
