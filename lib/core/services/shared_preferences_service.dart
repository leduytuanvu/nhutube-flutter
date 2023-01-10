import 'package:nhutube/core/configs/app_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  Future<void> clearAllData() async {
    SharedPreferences? sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.clear();
  }

  Future<String> setLocalization({required String localization}) async {
    SharedPreferences? sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString(
      AppString.localization,
      localization,
    );
    return localization;
  }

  Future<String> getLocalization() async {
    SharedPreferences? sharedPreferences =
        await SharedPreferences.getInstance();
    final localization = sharedPreferences.getString(AppString.localization);
    if (localization != null) {
      return localization;
    } else {
      return "en";
    }
  }

  Future<String> setTheme({required String theme}) async {
    SharedPreferences? sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString(
      AppString.theme,
      theme,
    );
    return theme;
  }

  Future<String> getTheme() async {
    SharedPreferences? sharedPreferences =
        await SharedPreferences.getInstance();
    final theme = sharedPreferences.getString(AppString.theme);
    if (theme != null) {
      return theme;
    } else {
      return "dark";
    }
  }
}
