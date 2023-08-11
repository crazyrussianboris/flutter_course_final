import 'package:flutter/material.dart';
import 'package:flutter_course_final/components/loader.dart';
import 'package:flutter_course_final/components/news_card.dart';
import 'package:flutter_course_final/providers/search_controller/search_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchResult extends ConsumerWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncSearch = ref.watch(searchControllerProvider);
    final news = asyncSearch.value?.values.toList() ?? [];

    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: asyncSearch.when(
            data: (_) => news.isEmpty
                ? const Center(child: Text('Начните поиск'))
                : ListView.builder(
                    padding: const EdgeInsets.only(top: 20.0),
                    itemBuilder: (context, index) =>
                        NewsCard(news: news[index]),
                    itemCount: news.length,
                  ),
            error: (error, stack) => Container(
                padding: const EdgeInsets.all(20.0),
                child: const Center(
                    child: Text('По вашему запросу ничего не найдено'))),
            loading: () => const Loader()));
  }
}
