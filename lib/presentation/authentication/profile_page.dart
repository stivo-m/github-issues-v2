import 'package:async_redux/async_redux.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:github_issues/application/redux/states/app_state.dart';
import 'package:github_issues/application/redux/view_models/profile_view_model.dart';
import 'package:github_issues/domain/objects/app_strings.dart';
import 'package:github_issues/domain/objects/spacers.dart';
import 'package:github_issues/presentation/authentication/widgets/theme_switcher.dart';
import 'package:lucid_components/buttons.dart';
import 'package:lucid_components/enums.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final FirebaseAuth _auth = FirebaseAuth.instance;

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
                mediumVerticalSizedBox,
                Padding(
                  padding: horizontalPadding,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      _auth.currentUser?.photoURL ?? '',
                    ),
                  ),
                ),
                mediumVerticalSizedBox,
                Padding(
                  padding: horizontalPadding,
                  child: Text(
                    _auth.currentUser?.displayName ?? '',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                mediumVerticalSizedBox,
                Padding(
                  padding: horizontalPadding,
                  child: Text(
                    _auth.currentUser?.email ?? '',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                mediumVerticalSizedBox,
                const Divider(),
                Padding(
                  padding: horizontalPadding,
                  child: Text(
                    switchThemeText,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                mediumVerticalSizedBox,
                Padding(
                  padding: horizontalPadding,
                  child: ThemeSwitcher(
                    onThemeTapped: vm.switchTheme!,
                    currentTheme: vm.currentTheme,
                  ),
                ),
                mediumVerticalSizedBox,
                const Divider(),
                mediumVerticalSizedBox,
                Padding(
                  padding: horizontalPadding,
                  child: LucidButton(
                    buttonText: logoutText,
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
