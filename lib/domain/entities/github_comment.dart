// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_comment.freezed.dart';
part 'github_comment.g.dart';

@freezed
class GithubCommentPayload with _$GithubCommentPayload {
  factory GithubCommentPayload({
    @JsonKey(name: 'nodes') List<GithubComment?>? comments,
  }) = _GithubCommentPayload;

  factory GithubCommentPayload.fromJson(Map<String, dynamic> json) =>
      _$GithubCommentPayloadFromJson(json);
}

@freezed
class GithubComment with _$GithubComment {
  factory GithubComment({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'publishedAt') String? createdAt,
    @JsonKey(name: 'author') GithubCommentAuthor? author,
    @JsonKey(name: 'body') String? comment,
  }) = _GithubComment;

  factory GithubComment.fromJson(Map<String, dynamic> json) =>
      _$GithubCommentFromJson(json);
}

@freezed
class GithubCommentAuthor with _$GithubCommentAuthor {
  factory GithubCommentAuthor({
    @JsonKey(name: 'login') String? login,
  }) = _GithubCommentAuthor;

  factory GithubCommentAuthor.fromJson(Map<String, dynamic> json) =>
      _$GithubCommentAuthorFromJson(json);
}
