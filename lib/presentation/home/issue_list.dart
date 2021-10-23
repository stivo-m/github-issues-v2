// Flutter imports:
import 'package:flutter/material.dart';
import 'package:github_issues/application/services/utils.dart';

// Project imports:
import 'package:github_issues/domain/entities/github_issue.dart';
import 'package:github_issues/domain/objects/app_strings.dart';
import 'package:github_issues/domain/objects/spacers.dart';
import 'package:github_issues/presentation/home/widgets/issue_widget.dart';
import 'package:lucid_components/buttons.dart';
import 'package:lucid_components/enums.dart';

class IssueList extends StatelessWidget {
  const IssueList({
    Key? key,
    this.issues,
  }) : super(key: key);

  final List<GithubIssue?>? issues;

  @override
  Widget build(BuildContext context) {
    // : ADD ZERO STATE

    if (issues == null || issues!.isEmpty) {
      return Padding(
        padding: horizontalPadding,
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                somethingWentWrong,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
              mediumVerticalSizedBox,
              Text(
                errorFetchingIssues,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(height: 1.5),
              ),
              mediumVerticalSizedBox,
              mediumVerticalSizedBox,
              LucidButton(
                buttonType: ButtonType.SECONDARY,
                buttonText: 'Retry',
                onPressed: () {
                  Utils.fetchIssues(context: context);
                },
              ),
            ],
          ),
        ),
      );
    }
    // return the issues in a column.
    return Column(
      children: issues!
          .map((GithubIssue? issue) => IssueWidget(issue: issue!))
          .toList(),
    );
  }
}
