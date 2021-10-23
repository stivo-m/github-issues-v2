// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_issues_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GraphIssuespayload _$$_GraphIssuespayloadFromJson(
        Map<String, dynamic> json) =>
    _$_GraphIssuespayload(
      issues: (json['nodes'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : GithubIssue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GraphIssuespayloadToJson(
        _$_GraphIssuespayload instance) =>
    <String, dynamic>{
      'nodes': instance.issues,
    };
