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
      repo: json['repo'] as String?,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : GithubComment.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'repo': instance.repo,
      'comments': instance.comments,
      'closed': instance.closed,
    };
