// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:github_issues/application/services/utils.dart';
import 'package:github_issues/domain/entities/github_issue.dart';
import 'package:github_issues/domain/objects/app_strings.dart';
import 'package:github_issues/domain/objects/spacers.dart';
import 'package:github_issues/presentation/home/widgets/badge.dart';
import 'package:lucid_components/colors.dart';

class IssueWidget extends StatelessWidget {
  const IssueWidget({
    Key? key,
    required this.issue,
  }) : super(key: key);

  final GithubIssue issue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      margin: const EdgeInsets.only(bottom: 10),
      width: double.maxFinite,
      color: Theme.of(context).cardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // date and whether the issue is open or closed
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '$openedText: ${Utils.formatDate(date: DateTime.parse(issue.createdAt!))}',
                style: Theme.of(context).textTheme.caption,
              ),
              Badge(
                text: issue.closed ?? false ? closedText : openText,
                backgroundColor:
                    issue.closed ?? false ? secondaryColor : primaryErrorColor,
              ),
            ],
          ),

          mediumVerticalSizedBox,

          // the actual issue
          Text(
            issue.title ?? '',
            style: Theme.of(context).textTheme.headline2,
          ),

          smallVerticalSizedBox,

          // description of the issue
          Text(
            issue.body ?? '',
            style: Theme.of(context).textTheme.bodyText2,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),

          mediumVerticalSizedBox,
          // developer name and comments
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.person,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      issue.user ?? '',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const Icon(
                      CupertinoIcons.chat_bubble,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '${issue.comments?.comments?.length} ${Utils.pluralizeText(count: issue.comments?.comments?.length ?? 0, singularText: commentText)}',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              ),
            ],
          ),

          mediumVerticalSizedBox,
          Divider(
            color: Theme.of(context).dividerColor,
          ),
        ],
      ),
    );
  }
}
