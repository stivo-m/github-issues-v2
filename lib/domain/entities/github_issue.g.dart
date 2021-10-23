// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubIssue _$$_GithubIssueFromJson(Map<String, dynamic> json) =>
    _$_GithubIssue(
      title: json['title'] as String?,
      body: json['body'] as String?,
      user: json['user'] as String?,
      id: json['id'] as String?,
      closedAt: json['closedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      repository: json['repository'] == null
          ? null
          : GithubRepository.fromJson(
              json['repository'] as Map<String, dynamic>),
      comments: json['comments'] == null
          ? null
          : GithubCommentPayload.fromJson(
              json['comments'] as Map<String, dynamic>),
      closed: json['closed'] as bool?,
    );

Map<String, dynamic> _$$_GithubIssueToJson(_$_GithubIssue instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'user': instance.user,
      'id': instance.id,
      'closedAt': instance.closedAt,
      'createdAt': instance.createdAt,
      'repository': instance.repository,
      'comments': instance.comments,
      'closed': instance.closed,
    };

_$_GithubRepository _$$_GithubRepositoryFromJson(Map<String, dynamic> json) =>
    _$_GithubRepository(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_GithubRepositoryToJson(_$_GithubRepository instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
