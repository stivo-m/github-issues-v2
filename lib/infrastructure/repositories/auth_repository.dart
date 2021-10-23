// Dart imports:
import 'dart:async';

// Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:uni_links/uni_links.dart';
import 'package:url_launcher/url_launcher.dart';

// Project imports:
import 'package:github_issues/domain/entities/github_oauth_response.dart';
import 'package:github_issues/domain/objects/app_strings.dart';
import 'package:github_issues/domain/objects/endpoints.dart';
import 'package:github_issues/infrastructure/facades/i_auth_facade.dart';
import 'package:github_issues/infrastructure/facades/i_cache_facade.dart';
import 'package:github_issues/infrastructure/facades/i_http_client_facade.dart';

class AuthRepository implements IAuthFacade {
  AuthRepository({
    required this.iCacheFacade,
    required this.firebaseAuth,
    required this.httpClient,
  });

  static User? firebaseUser;

  final FirebaseAuth firebaseAuth;
  final IHttpClient httpClient;
  final ICacheFacade iCacheFacade;

  static StreamSubscription<dynamic>? _subscription;

  @override
  ICacheFacade get cacheFacade => iCacheFacade;

  @override
  Future<bool> logOut() async {
    await firebaseAuth.signOut();
    return cacheFacade.removeAccessToken(tokenName: authTokenText);
  }

  @override
  Future<void>? login() async {
    return await _initDeepLinkListener().then((User? _firebaseUser) {
      firebaseUser = _firebaseUser;
    });
  }

  Future<User?> loginWithGithub(
    String code,
  ) async {
    final http.Response response = await httpClient.callRest(
      endpoint: githubAccessTokenEndpoint,
      variables: <String, dynamic>{
        'client_id': dotenv.env['GITHUB_CLIENT_ID'],
        'client_secret': dotenv.env['GITHUB_CLIENT_SECRET'],
        'code': code,
      },
    );

    // handle errors here

    final Map<String, dynamic> data =
        await httpClient.toMap(response: response);

    // destructure the data
    final GithubOAuthResponse oAuthResponse =
        GithubOAuthResponse.fromJson(data);

    final AuthCredential credential =
        GithubAuthProvider.credential(oAuthResponse.accessToken!);

    cacheFacade.saveAccessToken(
      tokenName: authTokenText,
      token: oAuthResponse.accessToken!,
    );

    return await firebaseAuth
        .signInWithCredential(credential)
        .then((UserCredential _user) {
      return _user.user;
    });
  }

  Future<void> _startlogin() async {
    if (await canLaunch(githubAuthEndpoint)) {
      await launch(
        githubAuthEndpoint,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      // catch the error
    }
  }

  // deep linking stuff
  Future<User?> _initDeepLinkListener() async {
    User? _user;
    _startlogin();
    _subscription = linkStream.listen(
      (String? link) async {
        if (link != null) {
          String code = link.substring(link.indexOf(RegExp('code=')) + 5);
          await loginWithGithub(code).then((firebaseUser) {
            _user = firebaseUser;
          }).catchError((e) {});
        }
      },
      cancelOnError: true,
    );

    return _user;
  }

  // dispose the deeplink listener
  static void disposeDeepLinkListener() {
    _subscription?.cancel();
    _subscription = null;
  }
}
