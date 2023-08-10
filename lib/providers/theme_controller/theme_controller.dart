import 'package:flutter_course_final/services/shared_preferences_service.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_controller.g.dart';

@riverpod
class ThemeController extends _$ThemeController {
  final prefKey = 'selectedTheme';
  final getIt = GetIt.instance;

  @override
  bool build() {
    final prefs = getIt<SharedPreferencesService>().getInstance();
    final isDark = prefs?.getBool(prefKey);

    return isDark ?? false;
  }

  void toggle() {
    final prefs = getIt<SharedPreferencesService>().getInstance();

    state = !state;
    prefs?.setBool(prefKey, state);
  }
}
