import 'package:dartz/dartz.dart';
import 'package:nytimes/core/error_handling/failure.dart';
import 'package:nytimes/data/data_source/news_remote_data_source.dart';
import 'package:nytimes/domain/base_repository/news_base_repository.dart';
import 'package:nytimes/domain/entities/news_entity.dart';

import '../../core/error_handling/exception.dart';

class NewsRepository extends NewsBaseRepository{
  final BaseRemoteNewsDataSource _baseRemoteNewsDataSource;
  NewsRepository(this._baseRemoteNewsDataSource);
  @override
  Future<Either<Failure, NewsEntity>> getAllNews(String period,) async {
    try {
      final result = await _baseRemoteNewsDataSource.getAllNews(period);
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
          ServerFailure(messageFail: failure.errorMessageModel.statusMessage));
    }
  }

}