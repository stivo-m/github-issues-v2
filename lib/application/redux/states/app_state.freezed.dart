// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {List<GithubIssue?>? issues,
      UserProfile? userProfile,
      @JsonKey(unknownEnumValue: AuthStatus.unathenticated)
          AuthStatus? authStatus,
      @JsonKey(ignore: true)
          Wait? wait}) {
    return _AppState(
      issues: issues,
      userProfile: userProfile,
      authStatus: authStatus,
      wait: wait,
    );
  }

  AppState fromJson(Map<String, Object?> json) {
    return AppState.fromJson(json);
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  List<GithubIssue?>? get issues => throw _privateConstructorUsedError;
  UserProfile? get userProfile => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: AuthStatus.unathenticated)
  AuthStatus? get authStatus => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Wait? get wait => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {List<GithubIssue?>? issues,
      UserProfile? userProfile,
      @JsonKey(unknownEnumValue: AuthStatus.unathenticated)
          AuthStatus? authStatus,
      @JsonKey(ignore: true)
          Wait? wait});

  $UserProfileCopyWith<$Res>? get userProfile;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? issues = freezed,
    Object? userProfile = freezed,
    Object? authStatus = freezed,
    Object? wait = freezed,
  }) {
    return _then(_value.copyWith(
      issues: issues == freezed
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<GithubIssue?>?,
      userProfile: userProfile == freezed
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus?,
      wait: wait == freezed
          ? _value.wait
          : wait // ignore: cast_nullable_to_non_nullable
              as Wait?,
    ));
  }

  @override
  $UserProfileCopyWith<$Res>? get userProfile {
    if (_value.userProfile == null) {
      return null;
    }

    return $UserProfileCopyWith<$Res>(_value.userProfile!, (value) {
      return _then(_value.copyWith(userProfile: value));
    });
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GithubIssue?>? issues,
      UserProfile? userProfile,
      @JsonKey(unknownEnumValue: AuthStatus.unathenticated)
          AuthStatus? authStatus,
      @JsonKey(ignore: true)
          Wait? wait});

  @override
  $UserProfileCopyWith<$Res>? get userProfile;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? issues = freezed,
    Object? userProfile = freezed,
    Object? authStatus = freezed,
    Object? wait = freezed,
  }) {
    return _then(_AppState(
      issues: issues == freezed
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<GithubIssue?>?,
      userProfile: userProfile == freezed
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus?,
      wait: wait == freezed
          ? _value.wait
          : wait // ignore: cast_nullable_to_non_nullable
              as Wait?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppState implements _AppState {
  _$_AppState(
      {this.issues,
      this.userProfile,
      @JsonKey(unknownEnumValue: AuthStatus.unathenticated) this.authStatus,
      @JsonKey(ignore: true) this.wait});

  factory _$_AppState.fromJson(Map<String, dynamic> json) =>
      _$$_AppStateFromJson(json);

  @override
  final List<GithubIssue?>? issues;
  @override
  final UserProfile? userProfile;
  @override
  @JsonKey(unknownEnumValue: AuthStatus.unathenticated)
  final AuthStatus? authStatus;
  @override
  @JsonKey(ignore: true)
  final Wait? wait;

  @override
  String toString() {
    return 'AppState(issues: $issues, userProfile: $userProfile, authStatus: $authStatus, wait: $wait)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppState &&
            const DeepCollectionEquality().equals(other.issues, issues) &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.wait, wait) || other.wait == wait));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(issues),
      userProfile,
      authStatus,
      wait);

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppStateToJson(this);
  }
}

abstract class _AppState implements AppState {
  factory _AppState(
      {List<GithubIssue?>? issues,
      UserProfile? userProfile,
      @JsonKey(unknownEnumValue: AuthStatus.unathenticated)
          AuthStatus? authStatus,
      @JsonKey(ignore: true)
          Wait? wait}) = _$_AppState;

  factory _AppState.fromJson(Map<String, dynamic> json) = _$_AppState.fromJson;

  @override
  List<GithubIssue?>? get issues;
  @override
  UserProfile? get userProfile;
  @override
  @JsonKey(unknownEnumValue: AuthStatus.unathenticated)
  AuthStatus? get authStatus;
  @override
  @JsonKey(ignore: true)
  Wait? get wait;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
