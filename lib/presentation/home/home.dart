// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:async_redux/async_redux.dart';

// Project imports:
import 'package:github_issues/application/redux/states/app_state.dart';
import 'package:github_issues/application/redux/view_models/home_view_model.dart';
import 'package:github_issues/presentation/home/issue_list.dart';
import 'package:github_issues/presentation/home/widgets/header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomeViewModel>(
      converter: (Store<AppState> store) => HomeViewModel.fromStore(store),
      builder: (BuildContext context, HomeViewModel vm) {
        return Scaffold(
          body: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Header(
                firstName: vm.userProfile!.firstName!.value.getOrElse(
                  () => '',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: IssueList(
                  issues: vm.issues,
                ),
              ),
            ],
          )),
        );
      },
    );
  }
}
