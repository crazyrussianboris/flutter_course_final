import 'package:flutter/material.dart';
import 'package:flutter_course_final/providers/theme_controller/theme_controller.dart';
import 'package:flutter_course_final/services/shared_preferences_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import 'pages/home_page/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final getIt = GetIt.instance;
  getIt.registerSingleton<SharedPreferencesService>(SharedPreferencesService());
  await getIt<SharedPreferencesService>().init();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkTheme = ref.watch(themeControllerProvider);
    return MaterialApp(
      title: 'Новости Reddit',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      home: const HomePage(),
    );
  }
}
