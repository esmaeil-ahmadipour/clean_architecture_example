import 'package:clean_architecture_example/core/utils/di/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil {
  SharedPreferencesUtil._();

  static void clearData(String key) {
    final prefs = getIt<SharedPreferences>();
    if (prefs.containsKey(key)) {
      prefs.remove(key);
    }
  }

  static void saveData(String key, String value) {
    getIt<SharedPreferences>().setString(key, value);
  }

  static dynamic getData(String key) {
    final prefs = getIt<SharedPreferences>();
    final savedValue = prefs.getString(key);
    if (savedValue != null) {
      return savedValue;
    } else {
      return null;
    }
  }

  static Future<void> saveBoolData(String key, {required bool value}) async {
    final prefs = getIt<SharedPreferences>();
    await prefs.setBool(key, value);
  }

  static bool? getBoolData(String key) {
    final prefs = getIt<SharedPreferences>();
    final savedValue = prefs.getBool(key);
    if (savedValue != null) {
      return savedValue;
    } else {
      return null;
    }
  }
}
