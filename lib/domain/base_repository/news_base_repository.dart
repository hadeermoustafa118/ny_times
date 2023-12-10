import 'package:nytimes/domain/entities/news_entity.dart';

import '../../core/error_handling/failure.dart';
import 'package:dartz/dartz.dart';

abstract class NewsBaseRepository {
  Future<Either<Failure, NewsEntity>> getAllNews(String period,);
}
