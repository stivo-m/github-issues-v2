// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';
import 'package:lucid_components/buttons.dart';
import 'package:lucid_components/colors.dart';
import 'package:lucid_components/enums.dart';

// Project imports:
import 'package:github_issues/application/services/authentication_service.dart';
import 'package:github_issues/domain/objects/app_strings.dart';
import 'package:github_issues/domain/objects/asset_strings.dart';
import 'package:github_issues/domain/objects/spacers.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final AuthenticationService authService = AuthenticationService.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SvgPicture.asset(
                termsSVG,
                height: MediaQuery.of(context).size.height * 0.6,
              ),
              mediumVerticalSizedBox,
              const Padding(
                padding: horizontalPadding,
                child: Text(
                  signInWithGithubAccount,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                  ),
                ),
              ),
              mediumVerticalSizedBox,
              const Padding(
                padding: horizontalPadding,
                child: Text(
                  signInWithGithubAccountDescription,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    height: 1.4,
                    fontSize: 16,
                    color: greyTextColor,
                  ),
                ),
              ),
              mediumVerticalSizedBox,
              mediumVerticalSizedBox,
              Padding(
                padding: horizontalPadding,
                child: LucidButton(
                  buttonType: ButtonType.PRIMARY_OUTLINE,
                  buttonText: loginWithGithub,
                  onPressed: () {
                    authService.loginWithGithub();
                  },
                ),
              ),
              mediumVerticalSizedBox,
            ],
          ),
        ),
      ),
    );
  }
}
