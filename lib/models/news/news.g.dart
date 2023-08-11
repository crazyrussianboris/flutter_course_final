// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsResponse _$$_NewsResponseFromJson(Map<String, dynamic> json) =>
    _$_NewsResponse(
      data: NewsResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NewsResponseToJson(_$_NewsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_NewsResponseData _$$_NewsResponseDataFromJson(Map<String, dynamic> json) =>
    _$_NewsResponseData(
      children: (json['children'] as List<dynamic>)
          .map((e) => NewsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NewsResponseDataToJson(_$_NewsResponseData instance) =>
    <String, dynamic>{
      'children': instance.children,
    };

_$_NewsItem _$$_NewsItemFromJson(Map<String, dynamic> json) => _$_NewsItem(
      data: News.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NewsItemToJson(_$_NewsItem instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_News _$$_NewsFromJson(Map<String, dynamic> json) => _$_News(
      id: json['id'] as String,
      selftext: json['selftext'] as String,
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$$_NewsToJson(_$_News instance) => <String, dynamic>{
      'id': instance.id,
      'selftext': instance.selftext,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
    };
