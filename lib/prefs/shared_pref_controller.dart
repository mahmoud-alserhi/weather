
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/extensions/enums.dart';

class SharedPrefController {
  //SINGLETON DESIGN PATTERN

  static SharedPrefController? _instance;

  SharedPrefController._internal();

  late SharedPreferences _sharedPreferences;

  factory SharedPrefController() {
    return _instance ??= SharedPrefController._internal();
  }

  Future<void> initSharedPref() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  ///THIS IS METHOD FOR ADD DATA TO SharedPrefController

  // Future<void> save({required User user}) async{
  //   await _sharedPreferences.setBool(PrefKey.login.toString(), true);
  //
  // }

  ///THIS IS METHODS FOR GET DATA FROM SharedPrefController

  bool get loggedIn => _sharedPreferences.getBool(PrefKey.login.toString()) ?? false;


  //Function To Edit language
  Future<bool> changeLanguage({required String language}) async {
    return await _sharedPreferences.setString(PrefKey.lang.toString(), language);
  }

  //Function To Read language
  String get language =>
      _sharedPreferences.getString(PrefKey.lang.toString()) ?? 'ar';

  Future<bool> clear() async{
    return await _sharedPreferences.clear();
  }



}
