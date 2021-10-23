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
    GithubRepository? repository,
    @JsonKey(name: 'comments') GithubCommentPayload? comments,
    bool? closed,
  }) = _GithubIssue;

  factory GithubIssue.fromJson(Map<String, dynamic> json) =>
      _$GithubIssueFromJson(json);
}

@freezed
class GithubRepository with _$GithubRepository {
  factory GithubRepository({String? id, String? name}) = _GithubRepository;

  factory GithubRepository.fromJson(Map<String, dynamic> json) =>
      _$GithubRepositoryFromJson(json);
}
