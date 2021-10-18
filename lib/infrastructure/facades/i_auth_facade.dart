import 'package:github_issues/domain/entities/user_profile.dart';
import 'package:github_issues/infrastructure/facades/i_cache_facade.dart';

abstract class IAuthFacade {
  IAuthFacade({
    required this.cacheFacade,
  });

  final ICacheFacade cacheFacade;

  Future<UserProfile> loginWithGithub(
    String code,
  );

  Future<bool> logOut();
}
