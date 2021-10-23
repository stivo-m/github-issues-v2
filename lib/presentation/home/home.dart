// Flutter imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:github_issues/application/redux/actions/fetch_issues_action.dart';
import 'package:github_issues/application/redux/flags/flags.dart';

// Project imports:
import 'package:github_issues/application/redux/states/app_state.dart';
import 'package:github_issues/application/redux/view_models/home_view_model.dart';
import 'package:github_issues/domain/objects/spacers.dart';
import 'package:github_issues/infrastructure/repositories/app_http_client.dart';
import 'package:github_issues/presentation/home/issue_list.dart';
import 'package:github_issues/presentation/home/widgets/header.dart';
import 'package:github_issues/presentation/routes/routes.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomeViewModel>(
      converter: (Store<AppState> store) => HomeViewModel.fromStore(store),
      onInit: (Store<AppState> store) => store.dispatch(
        FetchIssuesAction(
          client: AppHttpClient(),
          context: context,
          flag: fetchIssuesFlag,
        ),
      ),
      builder: (BuildContext context, HomeViewModel vm) {
        return Scaffold(
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: horizontalPadding,
                  child: Header(
                    height: 180,
                    firstName:
                        FirebaseAuth.instance.currentUser?.displayName ?? '',
                    onProfileTapped: () {
                      Navigator.of(context).pushNamed(AppRoutes.profileRoute);
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                vm.isWaitingForFlag!(flag: fetchIssuesFlag)!
                    ? const Center(child: CircularProgressIndicator())
                    : IssueList(
                        issues: vm.issues,
                      ),
              ],
            ),
          )),
        );
      },
    );
  }
}
