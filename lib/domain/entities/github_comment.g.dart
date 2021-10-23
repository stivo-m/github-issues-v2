// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubCommentPayload _$$_GithubCommentPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_GithubCommentPayload(
      comments: (json['nodes'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : GithubComment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GithubCommentPayloadToJson(
        _$_GithubCommentPayload instance) =>
    <String, dynamic>{
      'nodes': instance.comments,
    };

_$_GithubComment _$$_GithubCommentFromJson(Map<String, dynamic> json) =>
    _$_GithubComment(
      id: json['id'] as String?,
      createdAt: json['publishedAt'] as String?,
      author: json['author'] == null
          ? null
          : GithubCommentAuthor.fromJson(
              json['author'] as Map<String, dynamic>),
      comment: json['body'] as String?,
    );

Map<String, dynamic> _$$_GithubCommentToJson(_$_GithubComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'publishedAt': instance.createdAt,
      'author': instance.author,
      'body': instance.comment,
    };

_$_GithubCommentAuthor _$$_GithubCommentAuthorFromJson(
        Map<String, dynamic> json) =>
    _$_GithubCommentAuthor(
      login: json['login'] as String?,
    );

Map<String, dynamic> _$$_GithubCommentAuthorToJson(
        _$_GithubCommentAuthor instance) =>
    <String, dynamic>{
      'login': instance.login,
    };
