// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:github_issues/application/services/utils.dart';
import 'package:github_issues/domain/entities/github_issue.dart';
import 'package:github_issues/domain/objects/app_strings.dart';
import 'package:github_issues/presentation/home/widgets/badge.dart';
import 'package:github_issues/presentation/theme/text_styles.dart';

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
        vertical: 15,
      ),
      margin: const EdgeInsets.only(bottom: 10),
      width: double.maxFinite,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // date and whether the issue is open or closed
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '$openedText ${Utils.formatDate(date: issue.createdAt)}',
                style: smallSubtitleTextStyle,
              ),
              Badge(
                text: issue.closed ?? false ? closedText : openText,
                backgroundColor: issue.closed ?? false
                    ? Colors.green[700]
                    : Colors.blue[800],
              ),
            ],
          ),

          const SizedBox(
            height: 20,
          ),

          // the actual issue
          Text(
            issue.title ?? '',
            style: bodyTextStyle,
          ),

          const SizedBox(
            height: 20,
          ),
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
                      style: smallSubtitleTextStyle,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    const Icon(
                      CupertinoIcons.chat_bubble,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '${issue.comments?.length} ${Utils.pluralizeText(count: issue.comments?.length ?? 0, singularText: commentText)}',
                      style: smallSubtitleTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
