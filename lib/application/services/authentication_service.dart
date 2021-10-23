// Package imports:
import 'package:firebase_auth/firebase_auth.dart';

// Project imports:
import 'package:github_issues/infrastructure/repositories/app_http_client.dart';
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
            httpClient: AppHttpClient(),
            firebaseAuth: FirebaseAuth.instance,
          ),
    );
  }

  Future<void>? loginWithGithub() async {
    return await authRepository?.login();
  }

  Future<void>? logOut() {
    return authRepository?.logOut();
  }
}
