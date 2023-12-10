import 'package:get_it/get_it.dart';
import 'package:nytimes/data/data_source/news_remote_data_source.dart';
import 'package:nytimes/data/repository/news_repository.dart';
import 'package:nytimes/domain/base_repository/news_base_repository.dart';
import 'package:nytimes/domain/use_cases/news_use_case.dart';

import '../../presentation/controller/news_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {

    //BLOC
    sl.registerFactory(() => NewsBloc(sl(),));

    //USE_CASE
    sl.registerLazySingleton(() => GetAllNewsUseCase(sl()));

    //REPOSITORY
    sl.registerLazySingleton<NewsBaseRepository>(() => NewsRepository(sl()));

    //DATA_SOURCE
    sl.registerLazySingleton<BaseRemoteNewsDataSource>(() => RemoteNewsDataSource());

  }
}
