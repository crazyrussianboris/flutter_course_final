import 'package:flutter/material.dart';
import 'package:flutter_course_final/providers/theme_controller/theme_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkTheme = ref.watch(themeControllerProvider);
    return AppBar(title: Text(title), actions: <Widget>[
      IconButton(
          onPressed: () =>
              {ref.read(themeControllerProvider.notifier).toggle()},
          icon: isDarkTheme
              ? const Icon(Icons.light_mode)
              : const Icon(Icons.dark_mode))
    ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
