import 'package:flutter/material.dart';
import 'package:flutter_course_final/components/news_card.dart';
import 'package:flutter_course_final/providers/feed_controller/feed_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PullToRefreshWrapper extends ConsumerStatefulWidget {
  const PullToRefreshWrapper({super.key});

  @override
  ConsumerState<PullToRefreshWrapper> createState() =>
      _PullToRefreshWrapperState();
}

class _PullToRefreshWrapperState extends ConsumerState<PullToRefreshWrapper> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    await ref.read(feedControllerProvider.notifier).updateNews();
    if (ref.read(feedControllerProvider).hasError) {
      _refreshController.refreshFailed();
    } else {
      _refreshController.refreshCompleted();
    }
  }

  void _onLoading() async {
    await ref.read(feedControllerProvider.notifier).updateNews();
    if (ref.read(feedControllerProvider).hasError) {
      _refreshController.loadFailed();
    } else {
      _refreshController.loadComplete();
    }
  }

  @override
  Widget build(BuildContext context) {
    final newsMap = ref.watch(feedControllerProvider).value;
    final news = newsMap?.values.toList() ?? [];
    return SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        header: const ClassicHeader(),
        footer: const ClassicFooter(loadStyle: LoadStyle.ShowWhenLoading),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: ListView.builder(
          padding: const EdgeInsets.only(top: 20.0),
          itemBuilder: (context, index) => NewsCard(news: news[index]),
          itemCount: news.length,
        ));
  }
}
