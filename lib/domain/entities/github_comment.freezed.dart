// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubComment _$GithubCommentFromJson(Map<String, dynamic> json) {
  return _GithubComment.fromJson(json);
}

/// @nodoc
class _$GithubCommentTearOff {
  const _$GithubCommentTearOff();

  _GithubComment call({String? createdAt, String? user, String? comment}) {
    return _GithubComment(
      createdAt: createdAt,
      user: user,
      comment: comment,
    );
  }

  GithubComment fromJson(Map<String, Object?> json) {
    return GithubComment.fromJson(json);
  }
}

/// @nodoc
const $GithubComment = _$GithubCommentTearOff();

/// @nodoc
mixin _$GithubComment {
  String? get createdAt => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubCommentCopyWith<GithubComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubCommentCopyWith<$Res> {
  factory $GithubCommentCopyWith(
          GithubComment value, $Res Function(GithubComment) then) =
      _$GithubCommentCopyWithImpl<$Res>;
  $Res call({String? createdAt, String? user, String? comment});
}

/// @nodoc
class _$GithubCommentCopyWithImpl<$Res>
    implements $GithubCommentCopyWith<$Res> {
  _$GithubCommentCopyWithImpl(this._value, this._then);

  final GithubComment _value;
  // ignore: unused_field
  final $Res Function(GithubComment) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? user = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubCommentCopyWith<$Res>
    implements $GithubCommentCopyWith<$Res> {
  factory _$GithubCommentCopyWith(
          _GithubComment value, $Res Function(_GithubComment) then) =
      __$GithubCommentCopyWithImpl<$Res>;
  @override
  $Res call({String? createdAt, String? user, String? comment});
}

/// @nodoc
class __$GithubCommentCopyWithImpl<$Res>
    extends _$GithubCommentCopyWithImpl<$Res>
    implements _$GithubCommentCopyWith<$Res> {
  __$GithubCommentCopyWithImpl(
      _GithubComment _value, $Res Function(_GithubComment) _then)
      : super(_value, (v) => _then(v as _GithubComment));

  @override
  _GithubComment get _value => super._value as _GithubComment;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? user = freezed,
    Object? comment = freezed,
  }) {
    return _then(_GithubComment(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubComment implements _GithubComment {
  _$_GithubComment({this.createdAt, this.user, this.comment});

  factory _$_GithubComment.fromJson(Map<String, dynamic> json) =>
      _$$_GithubCommentFromJson(json);

  @override
  final String? createdAt;
  @override
  final String? user;
  @override
  final String? comment;

  @override
  String toString() {
    return 'GithubComment(createdAt: $createdAt, user: $user, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GithubComment &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createdAt, user, comment);

  @JsonKey(ignore: true)
  @override
  _$GithubCommentCopyWith<_GithubComment> get copyWith =>
      __$GithubCommentCopyWithImpl<_GithubComment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubCommentToJson(this);
  }
}

abstract class _GithubComment implements GithubComment {
  factory _GithubComment({String? createdAt, String? user, String? comment}) =
      _$_GithubComment;

  factory _GithubComment.fromJson(Map<String, dynamic> json) =
      _$_GithubComment.fromJson;

  @override
  String? get createdAt;
  @override
  String? get user;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$GithubCommentCopyWith<_GithubComment> get copyWith =>
      throw _privateConstructorUsedError;
}
