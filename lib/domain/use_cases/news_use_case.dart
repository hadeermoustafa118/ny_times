import 'package:nytimes/domain/base_repository/news_base_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:nytimes/domain/entities/news_entity.dart';
import '../../core/error_handling/failure.dart';

class GetAllNewsUseCase {
  final NewsBaseRepository _newsBaseRepository;

  GetAllNewsUseCase(this._newsBaseRepository);

  Future<Either<Failure, NewsEntity>> call(String period,) {
    return _newsBaseRepository.getAllNews(period,);
  }
}
