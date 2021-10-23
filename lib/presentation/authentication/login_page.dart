// Flutter imports:
import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';
import 'package:github_issues/application/redux/actions/login_action.dart';
import 'package:github_issues/application/redux/flags/flags.dart';
import 'package:github_issues/application/services/utils.dart';
import 'package:github_issues/infrastructure/repositories/app_http_client.dart';
import 'package:lucid_components/buttons.dart';
import 'package:lucid_components/enums.dart';

// Project imports:
import 'package:github_issues/domain/objects/app_strings.dart';
import 'package:github_issues/domain/objects/asset_strings.dart';
import 'package:github_issues/domain/objects/spacers.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonState _buttonState =
        Utils.checkIfWaiting(flag: loginFlag, context: context)
            ? ButtonState.BUSY
            : ButtonState.IDLE;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SvgPicture.asset(
                  termsSVG,
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
                mediumVerticalSizedBox,
                Padding(
                  padding: horizontalPadding,
                  child: Text(
                    signInWithGithubAccount,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                mediumVerticalSizedBox,
                Padding(
                  padding: horizontalPadding,
                  child: Text(
                    signInWithGithubAccountDescription,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                mediumVerticalSizedBox,
                mediumVerticalSizedBox,
                Padding(
                  padding: horizontalPadding,
                  child: LucidButton(
                    buttonType: ButtonType.PRIMARY_OUTLINE,
                    buttonText: signinWithGithub,
                    buttonState: _buttonState,
                    onPressed: () {
                      StoreProvider.dispatch(
                        context,
                        LoginAction(
                          flag: loginFlag,
                          context: context,
                          client: AppHttpClient(),
                        ),
                      );
                    },
                  ),
                ),
                mediumVerticalSizedBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
