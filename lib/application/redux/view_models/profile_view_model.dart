// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:github_issues/application/redux/actions/logout_action.dart';
import 'package:github_issues/application/redux/flags/flags.dart';

// Project imports:
import 'package:github_issues/application/redux/states/app_state.dart';
import 'package:github_issues/infrastructure/repositories/app_http_client.dart';

class ProfileViewModel {
  ProfileViewModel({
    this.onLogOut,
  });

  final VoidCallback? onLogOut;

  static ProfileViewModel fromStore(Store<AppState> store,
      {required BuildContext context}) {
    return ProfileViewModel(
      onLogOut: () => store.dispatch(
        LogoutAction(
          flag: logOutFlag,
          context: context,
          client: AppHttpClient(),
        ),
      ),
    );
  }
}
