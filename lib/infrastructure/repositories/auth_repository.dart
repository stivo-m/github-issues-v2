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
import 'package:github_issues/domain/entities/user_profile.dart';
import 'package:github_issues/domain/objects/app_strings.dart';
import 'package:github_issues/domain/objects/email.dart';
import 'package:github_issues/domain/objects/endpoints.dart';
import 'package:github_issues/domain/objects/name.dart';
import 'package:github_issues/infrastructure/facades/i_auth_facade.dart';
import 'package:github_issues/infrastructure/facades/i_cache_facade.dart';
import 'package:github_issues/infrastructure/facades/i_http_client_facade.dart';

class AuthRepository implements IAuthFacade {
  AuthRepository({
    required this.iCacheFacade,
    required this.firebaseAuth,
    required this.httpClient,
  });

  final ICacheFacade iCacheFacade;
  final FirebaseAuth firebaseAuth;
  static StreamSubscription<dynamic>? _subscription;
  final IHttpClient httpClient;
  static User? firebaseUser;

  @override
  ICacheFacade get cacheFacade => iCacheFacade;

  @override
  Future<bool> logOut() async {
    await firebaseAuth.signOut();
    return cacheFacade.removeAccessToken(tokenName: authTokenText);
  }

  @override
  Future<void> loginWithGithub(
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

    firebaseUser = await firebaseAuth
        .signInWithCredential(credential)
        .then((UserCredential _user) => _user.user);

    // print('firebase user: ${firebaseUser?.displayName?.toString()}');
    // login with firebase
    cacheFacade.saveAccessToken(
      tokenName: authTokenText,
      token: oAuthResponse.accessToken!,
    );
    // navigate the user to the home page.
  }

  Future<UserProfile> initGithubLogin() async {
    await _initDeepLinkListener();

    return UserProfile(
      emailAddress: EmailAddress.withValue(input: firebaseUser?.email ?? ''),
      firstName: Name.withValue(
          input: firebaseAuth.currentUser?.displayName?.split(' ')[0] ?? ''),
      lastName: Name.withValue(
          input: firebaseAuth.currentUser?.displayName?.split(' ')[1] ?? ''),
      role: null,
    );
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
  Future<void> _initDeepLinkListener() async {
    _startlogin();
    _subscription = linkStream.listen(
      (String? link) {
        String code = _getCode(link);
        loginWithGithub(code);
      },
      cancelOnError: true,
    );
  }

  static String _getCode(String? link) {
    if (link == null) {
      return '';
    } else {
      return link.substring(link.indexOf(RegExp('code=')) + 5);
    }
  }

  // dispose the deeplink listener
  static void disposeDeepLinkListener() {
    _subscription?.cancel();
    _subscription = null;
  }
}
