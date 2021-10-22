// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:async_redux/async_redux.dart';

// Project imports:
import 'package:github_issues/application/redux/states/app_state.dart';
import 'package:github_issues/application/services/authentication_service.dart';
import 'package:github_issues/domain/entities/user_profile.dart';
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
  void after() {
    super.after();
    dispatch(WaitAction<AppState>.remove(flag));
  }

  @override
  FutureOr<void> before() {
    dispatch(WaitAction<AppState>.add(flag));
    return super.before();
  }

  @override
  FutureOr<AppState?> reduce() async {
    final UserProfile? userProfile =
        await _authenticationService.loginWithGithub();

    if (userProfile != null) {
      Navigator.of(context).pushReplacementNamed(AppRoutes.homeRoute);
    }
  }
}
