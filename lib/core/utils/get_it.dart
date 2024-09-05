import 'package:cinemax_app/core/utils/api_service.dart';
import 'package:cinemax_app/features/home/data/data_soureces/local_home_data_source.dart';
import 'package:cinemax_app/features/home/data/data_soureces/remote_home_data_source.dart';
import 'package:cinemax_app/features/home/data/repos/home_repo_impl.dart';
import 'package:cinemax_app/features/search/data/data_sources/local_search_data_source.dart';
import 'package:cinemax_app/features/search/data/data_sources/remote_data_source.dart';
import 'package:cinemax_app/features/search/data/repos/search_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void serviceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      localHomeDataSource: LocalHomeDataSourceImpl(),
      remoteHomeDataSource: RemoteHomeDataSourceImpl(
        apiService: getIt.get<ApiService>(),
      ),
    ),
  );
  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(
      remoteDataSource: RemoteSearchDataSourceImpl(
        apiService: getIt.get<ApiService>(),
      ), localSearchDataSource: LocalSearchDataSourceImpl(),
    ),
  );
}
