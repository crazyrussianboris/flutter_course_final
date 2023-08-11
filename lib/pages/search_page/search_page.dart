import 'package:flutter/material.dart';
import 'package:flutter_course_final/components/debounced_text_field.dart';
import 'package:flutter_course_final/pages/search_page/widgets/search_result.dart';
import 'package:flutter_course_final/providers/search_controller/search_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: DebouncedTextField(
            onSearchChanged: (searchTerm) => {
                  ref
                      .read(searchControllerProvider.notifier)
                      .updateNews(searchTerm)
                }),
      ),
      const Expanded(child: SearchResult())
    ]);
  }
}
