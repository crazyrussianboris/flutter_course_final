import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
class NewsResponse with _$NewsResponse {
  const factory NewsResponse({
    required NewsResponseData data,
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}

@freezed
class NewsResponseData with _$NewsResponseData {
  const factory NewsResponseData({
    required List<NewsItem> children,
  }) = _NewsResponseData;

  factory NewsResponseData.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseDataFromJson(json);
}

@freezed
class NewsItem with _$NewsItem {
  const factory NewsItem({required News data}) = _NewsItem;

  factory NewsItem.fromJson(Map<String, dynamic> json) =>
      _$NewsItemFromJson(json);
}

@freezed
class News with _$News {
  const factory News(
      {required String id,
      required String selftext,
      required String title,
      required String thumbnail}) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}
