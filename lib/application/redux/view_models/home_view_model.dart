// Package imports:
import 'package:async_redux/async_redux.dart';

// Project imports:
import 'package:github_issues/application/redux/states/app_state.dart';
import 'package:github_issues/domain/entities/github_issue.dart';

class HomeViewModel {
  HomeViewModel({
    this.issues,
    this.isWaitingForFlag,
  });

  final bool? Function({required String flag})? isWaitingForFlag;
  final List<GithubIssue?>? issues;

  static HomeViewModel fromStore(Store<AppState> store) {
    return HomeViewModel(
        issues: store.state.issues,
        isWaitingForFlag: ({required String flag}) =>
            store.state.wait?.isWaitingFor(flag));
  }
}
