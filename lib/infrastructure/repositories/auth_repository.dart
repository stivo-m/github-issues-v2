// Project imports:
import 'package:github_issues/domain/entities/user_profile.dart';
import 'package:github_issues/infrastructure/facades/i_auth_facade.dart';
import 'package:github_issues/infrastructure/facades/i_cache_facade.dart';

class AuthRepository implements IAuthFacade {
  AuthRepository({
    required this.iCacheFacade,
  });

  final ICacheFacade iCacheFacade;

  @override
  ICacheFacade get cacheFacade => iCacheFacade;

  @override
  Future<bool> logOut() {
    throw UnimplementedError();
  }

  @override
  Future<UserProfile> loginWithGithub(String code) {
    throw UnimplementedError();
  }
}
