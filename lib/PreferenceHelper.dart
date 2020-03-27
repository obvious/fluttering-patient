import 'package:shared_preferences/shared_preferences.dart';

class PreferenceHelper {
  static Future<bool> isOnBoardingComplete() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool('onBoardingComplete') ?? false;
  }

  static Future<bool> isPassportAvailable() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool('bpPassportProvided') ?? false;
  }

  static Future<void> setPassportAvailability(bool isPassportAvailable) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setBool('onBoardingComplete', true);
    await preferences.setBool('bpPassportProvided', isPassportAvailable);
  }
}
