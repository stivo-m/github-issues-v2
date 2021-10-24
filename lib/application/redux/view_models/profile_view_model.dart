// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:github_issues/application/redux/actions/logout_action.dart';
import 'package:github_issues/application/redux/actions/switch_theme_action.dart';
import 'package:github_issues/application/redux/flags/flags.dart';

// Project imports:
import 'package:github_issues/application/redux/states/app_state.dart';
import 'package:github_issues/infrastructure/repositories/app_http_client.dart';

class ProfileViewModel {
  ProfileViewModel({
    required this.currentTheme,
    this.onLogOut,
    this.switchTheme,
  });

  final VoidCallback? onLogOut;
  final ThemeMode currentTheme;
  final Function({required ThemeMode themeMode})? switchTheme;

  static ProfileViewModel fromStore(Store<AppState> store,
      {required BuildContext context}) {
    return ProfileViewModel(
      currentTheme: store.state.themeMode!,
      onLogOut: () => store.dispatch(
        LogoutAction(
          flag: logOutFlag,
          context: context,
          client: AppHttpClient(),
        ),
      ),
      switchTheme: ({required ThemeMode themeMode}) => store.dispatch(
        SwitchThemeAction(
          themeMode: themeMode,
        ),
      ),
    );
  }
}
