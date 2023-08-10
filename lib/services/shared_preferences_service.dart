import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  SharedPreferences? prefsInstance;

  Future<SharedPreferences> init() async {
    prefsInstance = await SharedPreferences.getInstance();
    return prefsInstance!;
  }

  SharedPreferences? getInstance() {
    return prefsInstance;
  }
}
