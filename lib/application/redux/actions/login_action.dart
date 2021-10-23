// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:async_redux/async_redux.dart';

// Project imports:
import 'package:github_issues/application/redux/states/app_state.dart';
import 'package:github_issues/application/services/authentication_service.dart';
import 'package:github_issues/infrastructure/facades/i_http_client_facade.dart';
import 'package:github_issues/presentation/routes/routes.dart';

class LoginAction extends ReduxAction<AppState> {
  LoginAction({
    required this.flag,
    required this.context,
    required this.client,
  });

  final IHttpClient client;
  final BuildContext context;
  final String flag;
  final AuthenticationService _authenticationService =
      AuthenticationService.getInstance();

  @override
  FutureOr<void> before() {
    dispatch(WaitAction<AppState>.add(flag));
    return super.before();
  }

  @override
  void after() {
    super.after();

    dispatch(WaitAction<AppState>.remove(flag));
  }

  @override
  Future<AppState?> reduce() async {
    await _authenticationService.loginWithGithub();

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        Navigator.of(context).pushReplacementNamed(AppRoutes.homeRoute);
      }
    });

    return state;
  }
}
