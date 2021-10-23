// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import 'package:github_issues/infrastructure/facades/i_cache_facade.dart';

class CacheRepository implements ICacheFacade {
  static late SharedPreferences _preferences;

  @override
  String? getAccessToken({required String tokenName}) {
    return _preferences.getString(tokenName);
  }

  @override
  Future<bool> removeAccessToken({required String tokenName}) async {
    return await _preferences.remove(tokenName);
  }

  @override
  Future<bool> saveAccessToken(
      {required String tokenName, required String token}) async {
    return await _preferences.setString(tokenName, token);
  }

  static dynamic init() async {
    _preferences = await SharedPreferences.getInstance();
  }
}
