// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:github_issues/domain/entities/github_issue.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    List<GithubIssue?>? issues,
    ThemeMode? themeMode,
    @JsonKey(ignore: true) Wait? wait,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  factory AppState.initial() => AppState(
        issues: <GithubIssue?>[],
        themeMode: ThemeMode.system,
        wait: Wait(),
      );
}
