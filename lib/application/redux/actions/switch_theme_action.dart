
import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:github_issues/application/redux/states/app_state.dart';

class SwitchThemeAction extends ReduxAction<AppState> {
  SwitchThemeAction({
    required this.themeMode,
  });

  final ThemeMode themeMode;

  @override
  AppState? reduce() {
    return store.state.copyWith.call(
      themeMode: themeMode,
    );
  }
}
