// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:github_issues/domain/entities/github_comment.dart';

part 'github_issue.freezed.dart';
part 'github_issue.g.dart';

@freezed
class GithubIssue with _$GithubIssue {
  factory GithubIssue({
    String? title,
    String? body,
    String? user,
    String? id,
    String? closedAt,
    String? createdAt,
    String? repo,
    List<GithubComment?>? comments,
    bool? closed,
  }) = _GithubIssue;

  factory GithubIssue.fromJson(Map<String, dynamic> json) =>
      _$GithubIssueFromJson(json);
}
