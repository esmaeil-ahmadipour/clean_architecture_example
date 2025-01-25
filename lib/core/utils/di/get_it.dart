import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';



final getIt = GetIt.instance;

Future<void> setupSharedPreferences({SharedPreferences? param}) async {
  SharedPreferences? prefs;
  if (param == null) {
    prefs = await SharedPreferences.getInstance();
  } else {
    prefs = param;
  }
  getIt.registerSingleton<SharedPreferences>(prefs);
}
