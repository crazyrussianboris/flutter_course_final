import 'package:dio/dio.dart';
import 'package:flutter_course_final/models/news/news.dart';
import 'package:flutter_course_final/utils/news_utils.dart';
import 'package:get_it/get_it.dart';

class NewsService {
  Future<Map<String, News>> getNews() async {
    final dio = Dio();
    final getIt = GetIt.instance;

    final Response response =
        await dio.get('https://www.reddit.com/r/flutterdev/new.json');

    if (response.statusCode != 200) {
      throw Exception('При получении новостей возникла ошибка');
    }

    return getIt<NewsUtils>().formatNewsResponse(response);
  }

  Future<Map<String, News>> searchNews(String searchTerm) async {
    final dio = Dio();
    final getIt = GetIt.instance;

    final Response response = await dio.get('http://www.reddit.com/search.json',
        queryParameters: {'q': searchTerm});

    if (response.statusCode != 200) {
      throw Exception('По вашему запросу ничего не найдено');
    }

    final result = getIt<NewsUtils>().formatNewsResponse(response);

    if (result.isEmpty) {
      throw Exception('По вашему запросу ничего не найдено');
    }

    return result;
  }
}
