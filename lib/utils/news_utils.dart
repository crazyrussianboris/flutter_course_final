import 'package:dio/dio.dart';
import 'package:flutter_course_final/models/news/news.dart';

class NewsUtils {
  Map<String, News> formatNewsResponse(Response response) {
    List<News> result = [];

    if (response.data != null) {
      final NewsResponse handledResponse =
          NewsResponse.fromJson(Map<String, dynamic>.from(response.data));

      result = handledResponse.data.children.map((val) => val.data).toList();
    }

    return listNewsToMap(result);
  }

  Map<String, News> listNewsToMap(List<News> list) {
    return {for (var value in list) value.id: value};
  }
}
