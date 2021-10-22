// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_oauth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubOAuthResponse _$$_GithubOAuthResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GithubOAuthResponse(
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      scope: json['scope'] as String?,
    );

Map<String, dynamic> _$$_GithubOAuthResponseToJson(
        _$_GithubOAuthResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'scope': instance.scope,
    };
