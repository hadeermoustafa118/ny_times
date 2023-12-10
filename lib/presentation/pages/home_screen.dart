import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nytimes/core/constants/enum.dart';
import 'package:nytimes/presentation/controller/news_bloc.dart';
import 'package:nytimes/presentation/controller/news_event.dart';
import 'package:nytimes/presentation/controller/news_state.dart';
import 'package:nytimes/presentation/pages/details_screen.dart';
import 'package:nytimes/presentation/widgets/news_card.dart';

import '../../core/constants/constants.dart';
import '../../core/locator/service_locator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsBloc>(
        create: (context) => sl<NewsBloc>()..add(GetAllNewsEvent()),
        child: BlocBuilder<NewsBloc, NewsState>(
          buildWhen: (previous, current) =>
              previous.newsResultsState != current.newsResultsState,
          builder: (context, state) {
            return Scaffold(
                backgroundColor: AppColors.greyShade,
                appBar: AppBar(
                  backgroundColor: AppColors.tealShade,
                  elevation: 0.5,
                  title:  Text(
                    AppStrings.appBarTitle,
                  ),
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                    ),
                  ],
                ),
                body: switch (state.newsResultsState) {
                  RequestState.loading => Center(
                        child: CircularProgressIndicator(
                      color: AppColors.tealShade,
                    )),
                  RequestState.loaded => ListView.builder(
                      itemCount: state.newsResults.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsScreen(
                                            byLine:
                                                state.newsResults[index].byLine,
                                            title:
                                                state.newsResults[index].title,
                                            imgUrl: state.newsResults[index]
                                                    .media.isNotEmpty
                                                ? state
                                                    .newsResults[index]
                                                    .media[0]
                                                    .metaDataEntity[2]
                                                    .imgUrl
                                                : AppStrings.fallBackImg,
                                            caption: state.newsResults[index]
                                                    .media.isNotEmpty
                                                ? state.newsResults[index]
                                                    .media[0].caption
                                                : '',
                                            date: state.newsResults[index]
                                                .publishedDate,
                                            source:
                                                state.newsResults[index].source,
                                          )));
                            },
                            child: NewsCard(
                              imgUrl: state.newsResults[index].media.isNotEmpty
                                  ? state.newsResults[index].media[0]
                                      .metaDataEntity[0].imgUrl
                                  : AppStrings.fallBackImg,
                              title: state.newsResults[index].title,
                              byLine: state.newsResults[index].byLine,
                              date: state.newsResults[index].publishedDate,
                            ));
                      }),
                  RequestState.error =>
                    Center(child: Text(state.newsResultsMessage)),
                });
          },
        ));
  }
}
