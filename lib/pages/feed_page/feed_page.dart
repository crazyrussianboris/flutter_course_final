import 'package:flutter/material.dart';
import 'package:flutter_course_final/components/loader.dart';
import 'package:flutter_course_final/pages/feed_page/widgets/pull_to_refresh_wrapper.dart';
import 'package:flutter_course_final/providers/feed_controller/feed_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeedPage extends ConsumerWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsMap = ref.watch(feedControllerProvider);

    return newsMap.when(
        data: (_) => const PullToRefreshWrapper(),
        error: (error, stack) => Container(
            padding: const EdgeInsets.all(20.0),
            child: Center(child: Text(error.toString()))),
        loading: () => const Loader());
  }
}
