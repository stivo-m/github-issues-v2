// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubIssue _$GithubIssueFromJson(Map<String, dynamic> json) {
  return _GithubIssue.fromJson(json);
}

/// @nodoc
class _$GithubIssueTearOff {
  const _$GithubIssueTearOff();

  _GithubIssue call(
      {String? title,
      String? body,
      String? user,
      String? id,
      String? closedAt,
      String? createdAt,
      GithubRepository? repository,
      @JsonKey(name: 'comments') GithubCommentPayload? comments,
      bool? closed}) {
    return _GithubIssue(
      title: title,
      body: body,
      user: user,
      id: id,
      closedAt: closedAt,
      createdAt: createdAt,
      repository: repository,
      comments: comments,
      closed: closed,
    );
  }

  GithubIssue fromJson(Map<String, Object?> json) {
    return GithubIssue.fromJson(json);
  }
}

/// @nodoc
const $GithubIssue = _$GithubIssueTearOff();

/// @nodoc
mixin _$GithubIssue {
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get closedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  GithubRepository? get repository => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments')
  GithubCommentPayload? get comments => throw _privateConstructorUsedError;
  bool? get closed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubIssueCopyWith<GithubIssue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubIssueCopyWith<$Res> {
  factory $GithubIssueCopyWith(
          GithubIssue value, $Res Function(GithubIssue) then) =
      _$GithubIssueCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? body,
      String? user,
      String? id,
      String? closedAt,
      String? createdAt,
      GithubRepository? repository,
      @JsonKey(name: 'comments') GithubCommentPayload? comments,
      bool? closed});

  $GithubRepositoryCopyWith<$Res>? get repository;
  $GithubCommentPayloadCopyWith<$Res>? get comments;
}

/// @nodoc
class _$GithubIssueCopyWithImpl<$Res> implements $GithubIssueCopyWith<$Res> {
  _$GithubIssueCopyWithImpl(this._value, this._then);

  final GithubIssue _value;
  // ignore: unused_field
  final $Res Function(GithubIssue) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? user = freezed,
    Object? id = freezed,
    Object? closedAt = freezed,
    Object? createdAt = freezed,
    Object? repository = freezed,
    Object? comments = freezed,
    Object? closed = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      closedAt: closedAt == freezed
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      repository: repository == freezed
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as GithubRepository?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as GithubCommentPayload?,
      closed: closed == freezed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $GithubRepositoryCopyWith<$Res>? get repository {
    if (_value.repository == null) {
      return null;
    }

    return $GithubRepositoryCopyWith<$Res>(_value.repository!, (value) {
      return _then(_value.copyWith(repository: value));
    });
  }

  @override
  $GithubCommentPayloadCopyWith<$Res>? get comments {
    if (_value.comments == null) {
      return null;
    }

    return $GithubCommentPayloadCopyWith<$Res>(_value.comments!, (value) {
      return _then(_value.copyWith(comments: value));
    });
  }
}

/// @nodoc
abstract class _$GithubIssueCopyWith<$Res>
    implements $GithubIssueCopyWith<$Res> {
  factory _$GithubIssueCopyWith(
          _GithubIssue value, $Res Function(_GithubIssue) then) =
      __$GithubIssueCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? body,
      String? user,
      String? id,
      String? closedAt,
      String? createdAt,
      GithubRepository? repository,
      @JsonKey(name: 'comments') GithubCommentPayload? comments,
      bool? closed});

  @override
  $GithubRepositoryCopyWith<$Res>? get repository;
  @override
  $GithubCommentPayloadCopyWith<$Res>? get comments;
}

/// @nodoc
class __$GithubIssueCopyWithImpl<$Res> extends _$GithubIssueCopyWithImpl<$Res>
    implements _$GithubIssueCopyWith<$Res> {
  __$GithubIssueCopyWithImpl(
      _GithubIssue _value, $Res Function(_GithubIssue) _then)
      : super(_value, (v) => _then(v as _GithubIssue));

  @override
  _GithubIssue get _value => super._value as _GithubIssue;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? user = freezed,
    Object? id = freezed,
    Object? closedAt = freezed,
    Object? createdAt = freezed,
    Object? repository = freezed,
    Object? comments = freezed,
    Object? closed = freezed,
  }) {
    return _then(_GithubIssue(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      closedAt: closedAt == freezed
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      repository: repository == freezed
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as GithubRepository?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as GithubCommentPayload?,
      closed: closed == freezed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubIssue implements _GithubIssue {
  _$_GithubIssue(
      {this.title,
      this.body,
      this.user,
      this.id,
      this.closedAt,
      this.createdAt,
      this.repository,
      @JsonKey(name: 'comments') this.comments,
      this.closed});

  factory _$_GithubIssue.fromJson(Map<String, dynamic> json) =>
      _$$_GithubIssueFromJson(json);

  @override
  final String? title;
  @override
  final String? body;
  @override
  final String? user;
  @override
  final String? id;
  @override
  final String? closedAt;
  @override
  final String? createdAt;
  @override
  final GithubRepository? repository;
  @override
  @JsonKey(name: 'comments')
  final GithubCommentPayload? comments;
  @override
  final bool? closed;

  @override
  String toString() {
    return 'GithubIssue(title: $title, body: $body, user: $user, id: $id, closedAt: $closedAt, createdAt: $createdAt, repository: $repository, comments: $comments, closed: $closed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GithubIssue &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.closedAt, closedAt) ||
                other.closedAt == closedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.repository, repository) ||
                other.repository == repository) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.closed, closed) || other.closed == closed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, body, user, id, closedAt,
      createdAt, repository, comments, closed);

  @JsonKey(ignore: true)
  @override
  _$GithubIssueCopyWith<_GithubIssue> get copyWith =>
      __$GithubIssueCopyWithImpl<_GithubIssue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubIssueToJson(this);
  }
}

abstract class _GithubIssue implements GithubIssue {
  factory _GithubIssue(
      {String? title,
      String? body,
      String? user,
      String? id,
      String? closedAt,
      String? createdAt,
      GithubRepository? repository,
      @JsonKey(name: 'comments') GithubCommentPayload? comments,
      bool? closed}) = _$_GithubIssue;

  factory _GithubIssue.fromJson(Map<String, dynamic> json) =
      _$_GithubIssue.fromJson;

  @override
  String? get title;
  @override
  String? get body;
  @override
  String? get user;
  @override
  String? get id;
  @override
  String? get closedAt;
  @override
  String? get createdAt;
  @override
  GithubRepository? get repository;
  @override
  @JsonKey(name: 'comments')
  GithubCommentPayload? get comments;
  @override
  bool? get closed;
  @override
  @JsonKey(ignore: true)
  _$GithubIssueCopyWith<_GithubIssue> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubRepository _$GithubRepositoryFromJson(Map<String, dynamic> json) {
  return _GithubRepository.fromJson(json);
}

/// @nodoc
class _$GithubRepositoryTearOff {
  const _$GithubRepositoryTearOff();

  _GithubRepository call({String? id, String? name}) {
    return _GithubRepository(
      id: id,
      name: name,
    );
  }

  GithubRepository fromJson(Map<String, Object?> json) {
    return GithubRepository.fromJson(json);
  }
}

/// @nodoc
const $GithubRepository = _$GithubRepositoryTearOff();

/// @nodoc
mixin _$GithubRepository {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubRepositoryCopyWith<GithubRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepositoryCopyWith<$Res> {
  factory $GithubRepositoryCopyWith(
          GithubRepository value, $Res Function(GithubRepository) then) =
      _$GithubRepositoryCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$GithubRepositoryCopyWithImpl<$Res>
    implements $GithubRepositoryCopyWith<$Res> {
  _$GithubRepositoryCopyWithImpl(this._value, this._then);

  final GithubRepository _value;
  // ignore: unused_field
  final $Res Function(GithubRepository) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GithubRepositoryCopyWith<$Res>
    implements $GithubRepositoryCopyWith<$Res> {
  factory _$GithubRepositoryCopyWith(
          _GithubRepository value, $Res Function(_GithubRepository) then) =
      __$GithubRepositoryCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$GithubRepositoryCopyWithImpl<$Res>
    extends _$GithubRepositoryCopyWithImpl<$Res>
    implements _$GithubRepositoryCopyWith<$Res> {
  __$GithubRepositoryCopyWithImpl(
      _GithubRepository _value, $Res Function(_GithubRepository) _then)
      : super(_value, (v) => _then(v as _GithubRepository));

  @override
  _GithubRepository get _value => super._value as _GithubRepository;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_GithubRepository(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubRepository implements _GithubRepository {
  _$_GithubRepository({this.id, this.name});

  factory _$_GithubRepository.fromJson(Map<String, dynamic> json) =>
      _$$_GithubRepositoryFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'GithubRepository(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GithubRepository &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  _$GithubRepositoryCopyWith<_GithubRepository> get copyWith =>
      __$GithubRepositoryCopyWithImpl<_GithubRepository>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubRepositoryToJson(this);
  }
}

abstract class _GithubRepository implements GithubRepository {
  factory _GithubRepository({String? id, String? name}) = _$_GithubRepository;

  factory _GithubRepository.fromJson(Map<String, dynamic> json) =
      _$_GithubRepository.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$GithubRepositoryCopyWith<_GithubRepository> get copyWith =>
      throw _privateConstructorUsedError;
}
