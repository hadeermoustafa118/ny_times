import 'package:equatable/equatable.dart';
import 'package:nytimes/domain/entities/news_entity.dart';

import '../../core/constants/enum.dart';

class NewsState extends Equatable {
  final List<ResultsEntity> newsResults;
  final RequestState newsResultsState;
  final String newsResultsMessage;

  const NewsState(
      {this.newsResults = const [],
      this.newsResultsMessage = '',
      this.newsResultsState = RequestState.loading});

  NewsState copyWith({
    List<ResultsEntity>? newsResults,
    RequestState? newsResultsState,
    String? newsResultsMessage,
  }) {
    return NewsState(
      newsResultsState: newsResultsState ?? this.newsResultsState,
      newsResults: newsResults ?? this.newsResults,
      newsResultsMessage: newsResultsMessage ?? this.newsResultsMessage,
    );
  }

  @override
  List<Object?> get props => [
        newsResultsMessage,
        newsResultsState,
        newsResults,
      ];
}
