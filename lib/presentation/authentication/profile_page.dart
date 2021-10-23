import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:github_issues/application/redux/states/app_state.dart';
import 'package:github_issues/application/redux/view_models/profile_view_model.dart';
import 'package:github_issues/domain/objects/spacers.dart';
import 'package:lucid_components/buttons.dart';
import 'package:lucid_components/enums.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ProfileViewModel>(
      converter: (Store<AppState> store) => ProfileViewModel.fromStore(
        store,
        context: context,
      ),
      builder: (BuildContext context, ProfileViewModel vm) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: horizontalPadding,
                  child: LucidButton(
                    buttonText: 'Logout',
                    onPressed: vm.onLogOut!,
                    buttonType: ButtonType.PRIMARY,
                  ),
                )
              ],
            ),
          )),
        );
      },
    );
  }
}
