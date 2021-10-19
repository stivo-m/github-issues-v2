// Package imports:
import 'package:async_redux/async_redux.dart';

// Project imports:
import 'package:github_issues/application/redux/states/app_state.dart';
import 'package:github_issues/domain/entities/github_issue.dart';
import 'package:github_issues/domain/entities/user_profile.dart';
import 'package:github_issues/domain/objects/enums.dart';

class HomeViewModel {
  HomeViewModel(
      {this.authStatus, this.issues, this.userProfile, this.isWaitingForFlag});

  final bool? Function({required String flag})? isWaitingForFlag;
  final AuthStatus? authStatus;
  final List<GithubIssue?>? issues;
  final UserProfile? userProfile;

  static HomeViewModel fromStore(Store<AppState> store) {
    return HomeViewModel(
        authStatus: store.state.authStatus,
        issues: store.state.issues,
        userProfile: store.state.userProfile,
        isWaitingForFlag: ({required String flag}) =>
            store.state.wait?.isWaitingFor(flag));
  }
}
