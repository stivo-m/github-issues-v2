// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_oauth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubOAuthResponse _$$_GithubOAuthResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GithubOAuthResponse(
      accessToken: json['accessToken'] as String?,
      tokenType: json['tokenType'] as String?,
      scope: json['scope'] as String?,
    );

Map<String, dynamic> _$$_GithubOAuthResponseToJson(
        _$_GithubOAuthResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'tokenType': instance.tokenType,
      'scope': instance.scope,
    };
