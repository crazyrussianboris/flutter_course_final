import 'package:flutter_course_final/models/news/news.dart';
import 'package:flutter_course_final/services/news_service.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_controller.g.dart';

@riverpod
class FeedController extends _$FeedController {
  final getIt = GetIt.instance;

  @override
  FutureOr<Map<String, News>> build() async {
    return await getIt<NewsService>().getNews();
  }

  Future<void> updateNews() async {
    state = await AsyncValue.guard(() async {
      Map<String, News> response = await getIt<NewsService>().getNews();
      Map<String, News> result = {...(state.value ?? {}), ...response};
      return result;
    });
  }
}
