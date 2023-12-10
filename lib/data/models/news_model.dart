import 'package:nytimes/domain/entities/news_entity.dart';

class NewsModel extends NewsEntity {
  NewsModel({required super.status, required super.results});

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
      status: json['status'],
      results: List.from(
        json['results'].map((e) => ResultsModel.fromJson(e)),
      ));
}

class ResultsModel extends ResultsEntity {
  ResultsModel({
    required super.title,
    required super.id,
    required super.byLine,
    required super.media,
    required super.publishedDate,
    required super.source,

  });

  factory ResultsModel.fromJson(Map<String, dynamic> json) => ResultsModel(
      title: json['title'],
      id: json['id'],
      byLine: json['byline'],
      source: json['source'],
      media: List.from(
        json['media'].map((e) => MediaModel.fromJson(e)),
      ),
      publishedDate: json['published_date']);
}

class MediaModel extends MediaEntity {
  MediaModel({
    required super.metaDataEntity,
    required super.caption,
  });

  factory MediaModel.fromJson(Map<String, dynamic> json) => MediaModel(
      caption: json['caption'],
      metaDataEntity: List.from(
        json['media-metadata'].map((e) => MetaDataModel.fromJson(e)),
      ));
}

class MetaDataModel extends MetaDataEntity {
  MetaDataModel({required super.imgUrl});

  factory MetaDataModel.fromJson(Map<String, dynamic> json) =>
      MetaDataModel(imgUrl: json['url']);
}
