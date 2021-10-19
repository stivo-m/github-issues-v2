// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_comment.freezed.dart';
part 'github_comment.g.dart';

@freezed
class GithubComment with _$GithubComment {
  factory GithubComment({
    String? createdAt,
    String? user,
    String? comment,
  }) = _GithubComment;

  factory GithubComment.fromJson(Map<String, dynamic> json) =>
      _$GithubCommentFromJson(json);
}
