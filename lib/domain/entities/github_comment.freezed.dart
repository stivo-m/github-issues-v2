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

GithubCommentPayload _$GithubCommentPayloadFromJson(Map<String, dynamic> json) {
  return _GithubCommentPayload.fromJson(json);
}

/// @nodoc
class _$GithubCommentPayloadTearOff {
  const _$GithubCommentPayloadTearOff();

  _GithubCommentPayload call(
      {@JsonKey(name: 'nodes') List<GithubComment?>? comments}) {
    return _GithubCommentPayload(
      comments: comments,
    );
  }

  GithubCommentPayload fromJson(Map<String, Object?> json) {
    return GithubCommentPayload.fromJson(json);
  }
}

/// @nodoc
const $GithubCommentPayload = _$GithubCommentPayloadTearOff();

/// @nodoc
mixin _$GithubCommentPayload {
  @JsonKey(name: 'nodes')
  List<GithubComment?>? get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubCommentPayloadCopyWith<GithubCommentPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubCommentPayloadCopyWith<$Res> {
  factory $GithubCommentPayloadCopyWith(GithubCommentPayload value,
          $Res Function(GithubCommentPayload) then) =
      _$GithubCommentPayloadCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'nodes') List<GithubComment?>? comments});
}

/// @nodoc
class _$GithubCommentPayloadCopyWithImpl<$Res>
    implements $GithubCommentPayloadCopyWith<$Res> {
  _$GithubCommentPayloadCopyWithImpl(this._value, this._then);

  final GithubCommentPayload _value;
  // ignore: unused_field
  final $Res Function(GithubCommentPayload) _then;

  @override
  $Res call({
    Object? comments = freezed,
  }) {
    return _then(_value.copyWith(
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<GithubComment?>?,
    ));
  }
}

/// @nodoc
abstract class _$GithubCommentPayloadCopyWith<$Res>
    implements $GithubCommentPayloadCopyWith<$Res> {
  factory _$GithubCommentPayloadCopyWith(_GithubCommentPayload value,
          $Res Function(_GithubCommentPayload) then) =
      __$GithubCommentPayloadCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'nodes') List<GithubComment?>? comments});
}

/// @nodoc
class __$GithubCommentPayloadCopyWithImpl<$Res>
    extends _$GithubCommentPayloadCopyWithImpl<$Res>
    implements _$GithubCommentPayloadCopyWith<$Res> {
  __$GithubCommentPayloadCopyWithImpl(
      _GithubCommentPayload _value, $Res Function(_GithubCommentPayload) _then)
      : super(_value, (v) => _then(v as _GithubCommentPayload));

  @override
  _GithubCommentPayload get _value => super._value as _GithubCommentPayload;

  @override
  $Res call({
    Object? comments = freezed,
  }) {
    return _then(_GithubCommentPayload(
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<GithubComment?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubCommentPayload implements _GithubCommentPayload {
  _$_GithubCommentPayload({@JsonKey(name: 'nodes') this.comments});

  factory _$_GithubCommentPayload.fromJson(Map<String, dynamic> json) =>
      _$$_GithubCommentPayloadFromJson(json);

  @override
  @JsonKey(name: 'nodes')
  final List<GithubComment?>? comments;

  @override
  String toString() {
    return 'GithubCommentPayload(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GithubCommentPayload &&
            const DeepCollectionEquality().equals(other.comments, comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(comments));

  @JsonKey(ignore: true)
  @override
  _$GithubCommentPayloadCopyWith<_GithubCommentPayload> get copyWith =>
      __$GithubCommentPayloadCopyWithImpl<_GithubCommentPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubCommentPayloadToJson(this);
  }
}

abstract class _GithubCommentPayload implements GithubCommentPayload {
  factory _GithubCommentPayload(
          {@JsonKey(name: 'nodes') List<GithubComment?>? comments}) =
      _$_GithubCommentPayload;

  factory _GithubCommentPayload.fromJson(Map<String, dynamic> json) =
      _$_GithubCommentPayload.fromJson;

  @override
  @JsonKey(name: 'nodes')
  List<GithubComment?>? get comments;
  @override
  @JsonKey(ignore: true)
  _$GithubCommentPayloadCopyWith<_GithubCommentPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubComment _$GithubCommentFromJson(Map<String, dynamic> json) {
  return _GithubComment.fromJson(json);
}

/// @nodoc
class _$GithubCommentTearOff {
  const _$GithubCommentTearOff();

  _GithubComment call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'publishedAt') String? createdAt,
      @JsonKey(name: 'author') GithubCommentAuthor? author,
      @JsonKey(name: 'body') String? comment}) {
    return _GithubComment(
      id: id,
      createdAt: createdAt,
      author: author,
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
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'publishedAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  GithubCommentAuthor? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
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
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'publishedAt') String? createdAt,
      @JsonKey(name: 'author') GithubCommentAuthor? author,
      @JsonKey(name: 'body') String? comment});

  $GithubCommentAuthorCopyWith<$Res>? get author;
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
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? author = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as GithubCommentAuthor?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $GithubCommentAuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $GithubCommentAuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$GithubCommentCopyWith<$Res>
    implements $GithubCommentCopyWith<$Res> {
  factory _$GithubCommentCopyWith(
          _GithubComment value, $Res Function(_GithubComment) then) =
      __$GithubCommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'publishedAt') String? createdAt,
      @JsonKey(name: 'author') GithubCommentAuthor? author,
      @JsonKey(name: 'body') String? comment});

  @override
  $GithubCommentAuthorCopyWith<$Res>? get author;
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
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? author = freezed,
    Object? comment = freezed,
  }) {
    return _then(_GithubComment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as GithubCommentAuthor?,
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
  _$_GithubComment(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'publishedAt') this.createdAt,
      @JsonKey(name: 'author') this.author,
      @JsonKey(name: 'body') this.comment});

  factory _$_GithubComment.fromJson(Map<String, dynamic> json) =>
      _$$_GithubCommentFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'publishedAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'author')
  final GithubCommentAuthor? author;
  @override
  @JsonKey(name: 'body')
  final String? comment;

  @override
  String toString() {
    return 'GithubComment(id: $id, createdAt: $createdAt, author: $author, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GithubComment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, author, comment);

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
  factory _GithubComment(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'publishedAt') String? createdAt,
      @JsonKey(name: 'author') GithubCommentAuthor? author,
      @JsonKey(name: 'body') String? comment}) = _$_GithubComment;

  factory _GithubComment.fromJson(Map<String, dynamic> json) =
      _$_GithubComment.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'publishedAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'author')
  GithubCommentAuthor? get author;
  @override
  @JsonKey(name: 'body')
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$GithubCommentCopyWith<_GithubComment> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubCommentAuthor _$GithubCommentAuthorFromJson(Map<String, dynamic> json) {
  return _GithubCommentAuthor.fromJson(json);
}

/// @nodoc
class _$GithubCommentAuthorTearOff {
  const _$GithubCommentAuthorTearOff();

  _GithubCommentAuthor call({@JsonKey(name: 'login') String? login}) {
    return _GithubCommentAuthor(
      login: login,
    );
  }

  GithubCommentAuthor fromJson(Map<String, Object?> json) {
    return GithubCommentAuthor.fromJson(json);
  }
}

/// @nodoc
const $GithubCommentAuthor = _$GithubCommentAuthorTearOff();

/// @nodoc
mixin _$GithubCommentAuthor {
  @JsonKey(name: 'login')
  String? get login => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubCommentAuthorCopyWith<GithubCommentAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubCommentAuthorCopyWith<$Res> {
  factory $GithubCommentAuthorCopyWith(
          GithubCommentAuthor value, $Res Function(GithubCommentAuthor) then) =
      _$GithubCommentAuthorCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'login') String? login});
}

/// @nodoc
class _$GithubCommentAuthorCopyWithImpl<$Res>
    implements $GithubCommentAuthorCopyWith<$Res> {
  _$GithubCommentAuthorCopyWithImpl(this._value, this._then);

  final GithubCommentAuthor _value;
  // ignore: unused_field
  final $Res Function(GithubCommentAuthor) _then;

  @override
  $Res call({
    Object? login = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubCommentAuthorCopyWith<$Res>
    implements $GithubCommentAuthorCopyWith<$Res> {
  factory _$GithubCommentAuthorCopyWith(_GithubCommentAuthor value,
          $Res Function(_GithubCommentAuthor) then) =
      __$GithubCommentAuthorCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'login') String? login});
}

/// @nodoc
class __$GithubCommentAuthorCopyWithImpl<$Res>
    extends _$GithubCommentAuthorCopyWithImpl<$Res>
    implements _$GithubCommentAuthorCopyWith<$Res> {
  __$GithubCommentAuthorCopyWithImpl(
      _GithubCommentAuthor _value, $Res Function(_GithubCommentAuthor) _then)
      : super(_value, (v) => _then(v as _GithubCommentAuthor));

  @override
  _GithubCommentAuthor get _value => super._value as _GithubCommentAuthor;

  @override
  $Res call({
    Object? login = freezed,
  }) {
    return _then(_GithubCommentAuthor(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubCommentAuthor implements _GithubCommentAuthor {
  _$_GithubCommentAuthor({@JsonKey(name: 'login') this.login});

  factory _$_GithubCommentAuthor.fromJson(Map<String, dynamic> json) =>
      _$$_GithubCommentAuthorFromJson(json);

  @override
  @JsonKey(name: 'login')
  final String? login;

  @override
  String toString() {
    return 'GithubCommentAuthor(login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GithubCommentAuthor &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login);

  @JsonKey(ignore: true)
  @override
  _$GithubCommentAuthorCopyWith<_GithubCommentAuthor> get copyWith =>
      __$GithubCommentAuthorCopyWithImpl<_GithubCommentAuthor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubCommentAuthorToJson(this);
  }
}

abstract class _GithubCommentAuthor implements GithubCommentAuthor {
  factory _GithubCommentAuthor({@JsonKey(name: 'login') String? login}) =
      _$_GithubCommentAuthor;

  factory _GithubCommentAuthor.fromJson(Map<String, dynamic> json) =
      _$_GithubCommentAuthor.fromJson;

  @override
  @JsonKey(name: 'login')
  String? get login;
  @override
  @JsonKey(ignore: true)
  _$GithubCommentAuthorCopyWith<_GithubCommentAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}
