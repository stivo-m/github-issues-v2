// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubComment _$$_GithubCommentFromJson(Map<String, dynamic> json) =>
    _$_GithubComment(
      createdAt: json['createdAt'] as String?,
      user: json['user'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$_GithubCommentToJson(_$_GithubComment instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'user': instance.user,
      'comment': instance.comment,
    };
