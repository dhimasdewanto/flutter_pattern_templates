import 'source_model.dart';

class ArticleModel {
  ArticleModel({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  static List<ArticleModel> fromList(List listMap) {
    return listMap
        .map((map) => ArticleModel.fromMap(map as Map<String, dynamic>))
        .toList();
  }

  factory ArticleModel.fromMap(Map<String, dynamic> map) =>
      ArticleModel(
    source: SourceModel.fromMap(map['source'] as Map<String, dynamic>),
    author: map['author'] as String,
    title: map['title'] as String,
    description: map['description'] as String,
    url: map['url'] as String,
    urlToImage: map['urlToImage'] as String,
    publishedAt: DateTime.parse(map['publishedAt'] as String),
    content: map['content'] as String,
  );

  Map<String, dynamic> toMap() => {
      'source': source.toMap(),
      'author': author,
      'title': title,
      'description': description,
      'url': url,
      'urlToImage': urlToImage,
      'publishedAt': publishedAt.toIso8601String(),
      'content': content,
    };

  final SourceModel source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final DateTime publishedAt;
  final String content;
}