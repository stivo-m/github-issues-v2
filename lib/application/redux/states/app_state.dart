import 'package:async_redux/async_redux.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_issues/domain/entities/github_issue.dart';
import 'package:github_issues/domain/entities/user_profile.dart';
import 'package:github_issues/domain/objects/enums.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    List<GithubIssue?>? issues,
    UserProfile? userProfile,
    @JsonKey(
      unknownEnumValue: AuthStatus.unathenticated,
    )
        AuthStatus? authStatus,
    @JsonKey(ignore: true)
        Wait? wait,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}
