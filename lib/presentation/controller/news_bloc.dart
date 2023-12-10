import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nytimes/domain/use_cases/news_use_case.dart';
import 'package:nytimes/presentation/controller/news_event.dart';
import 'package:nytimes/presentation/controller/news_state.dart';

import '../../core/constants/enum.dart';

class NewsBloc extends Bloc<NewsEvents, NewsState> {
  NewsBloc(this.getAllNewsUseCase) : super(const NewsState()) {
    on<GetAllNewsEvent>(_getAllNews);
  }

  GetAllNewsUseCase getAllNewsUseCase;

  Future<void> _getAllNews(
      GetAllNewsEvent event, Emitter<NewsState> emit) async {
    final result = await getAllNewsUseCase('7');
    log(result.toString());
    result.fold((failure) {
      log(failure.messageFail);
      emit(state.copyWith(
          newsResultsState: RequestState.error,
          newsResultsMessage: failure.messageFail));
    }, (news) {
log(news.results.length.toString());
      if (news.status == 'OK') {

        emit(state.copyWith(
            newsResults: news.results, newsResultsState: RequestState.loaded));
      } else {
        emit(state.copyWith(
            newsResultsMessage: 'Failed',
            newsResultsState: RequestState.error));
      }
    });
  }
}
