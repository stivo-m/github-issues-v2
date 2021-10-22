// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_oauth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubOAuthResponse _$GithubOAuthResponseFromJson(Map<String, dynamic> json) {
  return _GithubOAuthResponse.fromJson(json);
}

/// @nodoc
class _$GithubOAuthResponseTearOff {
  const _$GithubOAuthResponseTearOff();

  _GithubOAuthResponse call(
      {@JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'scope') String? scope}) {
    return _GithubOAuthResponse(
      accessToken: accessToken,
      tokenType: tokenType,
      scope: scope,
    );
  }

  GithubOAuthResponse fromJson(Map<String, Object?> json) {
    return GithubOAuthResponse.fromJson(json);
  }
}

/// @nodoc
const $GithubOAuthResponse = _$GithubOAuthResponseTearOff();

/// @nodoc
mixin _$GithubOAuthResponse {
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String? get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'scope')
  String? get scope => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubOAuthResponseCopyWith<GithubOAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubOAuthResponseCopyWith<$Res> {
  factory $GithubOAuthResponseCopyWith(
          GithubOAuthResponse value, $Res Function(GithubOAuthResponse) then) =
      _$GithubOAuthResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'scope') String? scope});
}

/// @nodoc
class _$GithubOAuthResponseCopyWithImpl<$Res>
    implements $GithubOAuthResponseCopyWith<$Res> {
  _$GithubOAuthResponseCopyWithImpl(this._value, this._then);

  final GithubOAuthResponse _value;
  // ignore: unused_field
  final $Res Function(GithubOAuthResponse) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? scope = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubOAuthResponseCopyWith<$Res>
    implements $GithubOAuthResponseCopyWith<$Res> {
  factory _$GithubOAuthResponseCopyWith(_GithubOAuthResponse value,
          $Res Function(_GithubOAuthResponse) then) =
      __$GithubOAuthResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'scope') String? scope});
}

/// @nodoc
class __$GithubOAuthResponseCopyWithImpl<$Res>
    extends _$GithubOAuthResponseCopyWithImpl<$Res>
    implements _$GithubOAuthResponseCopyWith<$Res> {
  __$GithubOAuthResponseCopyWithImpl(
      _GithubOAuthResponse _value, $Res Function(_GithubOAuthResponse) _then)
      : super(_value, (v) => _then(v as _GithubOAuthResponse));

  @override
  _GithubOAuthResponse get _value => super._value as _GithubOAuthResponse;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? scope = freezed,
  }) {
    return _then(_GithubOAuthResponse(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubOAuthResponse implements _GithubOAuthResponse {
  _$_GithubOAuthResponse(
      {@JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'token_type') this.tokenType,
      @JsonKey(name: 'scope') this.scope});

  factory _$_GithubOAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GithubOAuthResponseFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  @JsonKey(name: 'token_type')
  final String? tokenType;
  @override
  @JsonKey(name: 'scope')
  final String? scope;

  @override
  String toString() {
    return 'GithubOAuthResponse(accessToken: $accessToken, tokenType: $tokenType, scope: $scope)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GithubOAuthResponse &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.scope, scope) || other.scope == scope));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessToken, tokenType, scope);

  @JsonKey(ignore: true)
  @override
  _$GithubOAuthResponseCopyWith<_GithubOAuthResponse> get copyWith =>
      __$GithubOAuthResponseCopyWithImpl<_GithubOAuthResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubOAuthResponseToJson(this);
  }
}

abstract class _GithubOAuthResponse implements GithubOAuthResponse {
  factory _GithubOAuthResponse(
      {@JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'scope') String? scope}) = _$_GithubOAuthResponse;

  factory _GithubOAuthResponse.fromJson(Map<String, dynamic> json) =
      _$_GithubOAuthResponse.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  @JsonKey(name: 'token_type')
  String? get tokenType;
  @override
  @JsonKey(name: 'scope')
  String? get scope;
  @override
  @JsonKey(ignore: true)
  _$GithubOAuthResponseCopyWith<_GithubOAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
