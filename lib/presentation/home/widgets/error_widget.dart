import 'package:flutter/material.dart';
import 'package:github_issues/domain/objects/app_strings.dart';
import 'package:github_issues/domain/objects/spacers.dart';
import 'package:lucid_components/buttons.dart';
import 'package:lucid_components/enums.dart';

class GenericErrorWidget extends StatelessWidget {
  const GenericErrorWidget({
    Key? key,
    required this.title,
    required this.message,
    required this.onRetry,
  }) : super(key: key);

  final String message;
  final VoidCallback onRetry;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
          mediumVerticalSizedBox,
          Text(
            message,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(height: 1.5),
          ),
          mediumVerticalSizedBox,
          mediumVerticalSizedBox,
          LucidButton(
            buttonType: ButtonType.SECONDARY,
            buttonText: retryText,
            onPressed: onRetry,
          ),
        ],
      ),
    );
  }
}
