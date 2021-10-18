import 'package:github_issues/domain/entities/user_profile.dart';
import 'package:github_issues/infrastructure/repositories/auth_repository.dart';
import 'package:github_issues/infrastructure/repositories/cache_repository.dart';

class AuthenticationService {
  final AuthRepository? authRepository;

  static AuthenticationService? _instance;

  AuthenticationService._({this.authRepository});

  static AuthenticationService getInstance({AuthRepository? repository}) {
    // ??= checks whether the instance is null, and assigns it a value by default
    return _instance ??= AuthenticationService._(
      authRepository: repository ??
          AuthRepository(
            iCacheFacade: CacheRepository(),
          ),
    );
  }

  Future<UserProfile?>? loginWithGithub() {
    return _instance?.loginWithGithub();
  }
}
