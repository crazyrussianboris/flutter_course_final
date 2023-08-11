import 'package:flutter_course_final/models/news/news.dart';
import 'package:flutter_course_final/services/news_service.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_controller.g.dart';

@riverpod
class SearchController extends _$SearchController {
  final getIt = GetIt.instance;
  @override
  FutureOr<Map<String, News>> build() async {
    return {};
  }

  Future<void> updateNews(String searchTerm) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
          return await getIt<NewsService>().searchNews(searchTerm);
    });
  }
}
