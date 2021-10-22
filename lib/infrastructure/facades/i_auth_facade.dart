// Project imports:

// Project imports:
import 'package:github_issues/infrastructure/facades/i_cache_facade.dart';

abstract class IAuthFacade {
  IAuthFacade({
    required this.cacheFacade,
  });

  final ICacheFacade cacheFacade;

  Future<void> loginWithGithub(
    String code,
  );

  Future<bool> logOut();
}
