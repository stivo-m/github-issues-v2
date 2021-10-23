// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'graph_issues_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GraphIssuesPayload _$GraphIssuesPayloadFromJson(Map<String, dynamic> json) {
  return _GraphIssuespayload.fromJson(json);
}

/// @nodoc
class _$GraphIssuesPayloadTearOff {
  const _$GraphIssuesPayloadTearOff();

  _GraphIssuespayload call(
      {@JsonKey(name: 'nodes') List<GithubIssue?>? issues}) {
    return _GraphIssuespayload(
      issues: issues,
    );
  }

  GraphIssuesPayload fromJson(Map<String, Object?> json) {
    return GraphIssuesPayload.fromJson(json);
  }
}

/// @nodoc
const $GraphIssuesPayload = _$GraphIssuesPayloadTearOff();

/// @nodoc
mixin _$GraphIssuesPayload {
  @JsonKey(name: 'nodes')
  List<GithubIssue?>? get issues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraphIssuesPayloadCopyWith<GraphIssuesPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphIssuesPayloadCopyWith<$Res> {
  factory $GraphIssuesPayloadCopyWith(
          GraphIssuesPayload value, $Res Function(GraphIssuesPayload) then) =
      _$GraphIssuesPayloadCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'nodes') List<GithubIssue?>? issues});
}

/// @nodoc
class _$GraphIssuesPayloadCopyWithImpl<$Res>
    implements $GraphIssuesPayloadCopyWith<$Res> {
  _$GraphIssuesPayloadCopyWithImpl(this._value, this._then);

  final GraphIssuesPayload _value;
  // ignore: unused_field
  final $Res Function(GraphIssuesPayload) _then;

  @override
  $Res call({
    Object? issues = freezed,
  }) {
    return _then(_value.copyWith(
      issues: issues == freezed
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<GithubIssue?>?,
    ));
  }
}

/// @nodoc
abstract class _$GraphIssuespayloadCopyWith<$Res>
    implements $GraphIssuesPayloadCopyWith<$Res> {
  factory _$GraphIssuespayloadCopyWith(
          _GraphIssuespayload value, $Res Function(_GraphIssuespayload) then) =
      __$GraphIssuespayloadCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'nodes') List<GithubIssue?>? issues});
}

/// @nodoc
class __$GraphIssuespayloadCopyWithImpl<$Res>
    extends _$GraphIssuesPayloadCopyWithImpl<$Res>
    implements _$GraphIssuespayloadCopyWith<$Res> {
  __$GraphIssuespayloadCopyWithImpl(
      _GraphIssuespayload _value, $Res Function(_GraphIssuespayload) _then)
      : super(_value, (v) => _then(v as _GraphIssuespayload));

  @override
  _GraphIssuespayload get _value => super._value as _GraphIssuespayload;

  @override
  $Res call({
    Object? issues = freezed,
  }) {
    return _then(_GraphIssuespayload(
      issues: issues == freezed
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<GithubIssue?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GraphIssuespayload implements _GraphIssuespayload {
  _$_GraphIssuespayload({@JsonKey(name: 'nodes') this.issues});

  factory _$_GraphIssuespayload.fromJson(Map<String, dynamic> json) =>
      _$$_GraphIssuespayloadFromJson(json);

  @override
  @JsonKey(name: 'nodes')
  final List<GithubIssue?>? issues;

  @override
  String toString() {
    return 'GraphIssuesPayload(issues: $issues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GraphIssuespayload &&
            const DeepCollectionEquality().equals(other.issues, issues));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(issues));

  @JsonKey(ignore: true)
  @override
  _$GraphIssuespayloadCopyWith<_GraphIssuespayload> get copyWith =>
      __$GraphIssuespayloadCopyWithImpl<_GraphIssuespayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GraphIssuespayloadToJson(this);
  }
}

abstract class _GraphIssuespayload implements GraphIssuesPayload {
  factory _GraphIssuespayload(
          {@JsonKey(name: 'nodes') List<GithubIssue?>? issues}) =
      _$_GraphIssuespayload;

  factory _GraphIssuespayload.fromJson(Map<String, dynamic> json) =
      _$_GraphIssuespayload.fromJson;

  @override
  @JsonKey(name: 'nodes')
  List<GithubIssue?>? get issues;
  @override
  @JsonKey(ignore: true)
  _$GraphIssuespayloadCopyWith<_GraphIssuespayload> get copyWith =>
      throw _privateConstructorUsedError;
}
