// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_oauth_response.freezed.dart';
part 'github_oauth_response.g.dart';

@freezed
class GithubOAuthResponse with _$GithubOAuthResponse {
  factory GithubOAuthResponse({
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'token_type') String? tokenType,
    @JsonKey(name: 'scope') String? scope,
  }) = _GithubOAuthResponse;

  factory GithubOAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$GithubOAuthResponseFromJson(json);
}
