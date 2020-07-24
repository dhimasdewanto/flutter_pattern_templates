import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/article.dart';
import 'source_model.dart';

part 'article_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ArticleModel {
  ArticleModel({
    @required this.source,
    @required this.author,
    @required this.title,
    @required this.description,
    @required this.url,
    @required this.urlToImage,
    @required this.publishedAt,
    @required this.content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);

  final SourceModel source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final DateTime publishedAt;
  final String content;

  Article toDomain() => Article(
        sourceId: source.id ?? "",
        sourceName: source.name ?? "",
        author: author ?? "",
        title: title ?? "",
        description: description ?? "",
        url: url ?? "",
        urlToImage: urlToImage ?? "",
        publishedAt: publishedAt ?? DateTime.now(),
        content: content ?? "",
      );
}
