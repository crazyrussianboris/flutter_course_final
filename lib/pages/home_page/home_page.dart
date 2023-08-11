import 'package:flutter/material.dart';
import 'package:flutter_course_final/components/custom_app_bar.dart';
import 'package:flutter_course_final/pages/feed_page/feed_page.dart';
import 'package:flutter_course_final/pages/search_page/search_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentTabProvider = StateProvider<int>((ref) => 0);

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTabIndex = ref.watch(currentTabProvider);

    return Scaffold(
        appBar: const CustomAppBar(title: 'Reddit News'),
        body: <Widget>[
          const FeedPage(),
          const SearchPage(),
        ][currentTabIndex],
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            ref.read(currentTabProvider.notifier).state = index;
          },
          selectedIndex: currentTabIndex,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.newspaper),
              label: 'News',
            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
          ],
        ));
  }
}
