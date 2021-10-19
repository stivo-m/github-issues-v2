// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:github_issues/domain/entities/github_issue.dart';
import 'package:github_issues/presentation/home/widgets/issue_widget.dart';

class IssueList extends StatelessWidget {
  const IssueList({
    Key? key,
    this.issues,
  }) : super(key: key);

  final List<GithubIssue?>? issues;

  @override
  Widget build(BuildContext context) {
    // : ADD ZERO STATE
    if (issues == null || issues!.isEmpty) return const SizedBox.shrink();
    // return the issues in a column.
    return Column(
      children: issues!
          .map((GithubIssue? issue) => IssueWidget(issue: issue!))
          .toList(),
    );
  }
}
