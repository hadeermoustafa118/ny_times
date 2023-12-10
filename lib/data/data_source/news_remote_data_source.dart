import 'package:nytimes/core/constants/constants.dart';
import 'package:nytimes/domain/entities/news_entity.dart';
import 'package:dio/dio.dart';

import '../../core/error_handling/error_message_model.dart';
import '../../core/error_handling/exception.dart';
import '../models/news_model.dart';

abstract class BaseRemoteNewsDataSource {
  Future<NewsEntity> getAllNews(
    String period,
  );
}

class RemoteNewsDataSource extends BaseRemoteNewsDataSource {
  @override
  Future<NewsEntity> getAllNews(
    String period,
  ) async {
    final response =
        await Dio().get(ApiConstants.apiPath(period), queryParameters: {
      'api-key': ApiConstants.appKey,
    });
    if (response.statusCode == 200) {
      return NewsModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
