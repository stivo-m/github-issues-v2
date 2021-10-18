// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  _InvalidEmail<T> invalidEmail<T>({T? failedValue}) {
    return _InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  _ShortPassword<T> shortPassword<T>({T? failedValue}) {
    return _ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  _InvalidPhoneNumber<T> invalidPhoneNumber<T>({T? failedValue}) {
    return _InvalidPhoneNumber<T>(
      failedValue: failedValue,
    );
  }

  _InvalidNameField<T> invalidNameField<T>({T? failedValue}) {
    return _InvalidNameField<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T? get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) shortPassword,
    required TResult Function(T? failedValue) invalidPhoneNumber,
    required TResult Function(T? failedValue) invalidNameField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidPhoneNumber,
    TResult Function(T? failedValue)? invalidNameField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidPhoneNumber,
    TResult Function(T? failedValue)? invalidNameField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_InvalidNameField<T> value) invalidNameField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_InvalidNameField<T> value)? invalidNameField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_InvalidNameField<T> value)? invalidNameField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T? failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
abstract class _$InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail<T> value, $Res Function(_InvalidEmail<T>) then) =
      __$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T? failedValue});
}

/// @nodoc
class __$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidEmailCopyWith<T, $Res> {
  __$InvalidEmailCopyWithImpl(
      _InvalidEmail<T> _value, $Res Function(_InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _InvalidEmail<T>));

  @override
  _InvalidEmail<T> get _value => super._value as _InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_InvalidEmail<T> implements _InvalidEmail<T> {
  const _$_InvalidEmail({this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith =>
      __$InvalidEmailCopyWithImpl<T, _InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) shortPassword,
    required TResult Function(T? failedValue) invalidPhoneNumber,
    required TResult Function(T? failedValue) invalidNameField,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidPhoneNumber,
    TResult Function(T? failedValue)? invalidNameField,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidPhoneNumber,
    TResult Function(T? failedValue)? invalidNameField,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_InvalidNameField<T> value) invalidNameField,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_InvalidNameField<T> value)? invalidNameField,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_InvalidNameField<T> value)? invalidNameField,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements ValueFailure<T> {
  const factory _InvalidEmail({T? failedValue}) = _$_InvalidEmail<T>;

  @override
  T? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$ShortPasswordCopyWith(
          _ShortPassword<T> value, $Res Function(_ShortPassword<T>) then) =
      __$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T? failedValue});
}

/// @nodoc
class __$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ShortPasswordCopyWith<T, $Res> {
  __$ShortPasswordCopyWithImpl(
      _ShortPassword<T> _value, $Res Function(_ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as _ShortPassword<T>));

  @override
  _ShortPassword<T> get _value => super._value as _ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_ShortPassword<T> implements _ShortPassword<T> {
  const _$_ShortPassword({this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith =>
      __$ShortPasswordCopyWithImpl<T, _ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) shortPassword,
    required TResult Function(T? failedValue) invalidPhoneNumber,
    required TResult Function(T? failedValue) invalidNameField,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidPhoneNumber,
    TResult Function(T? failedValue)? invalidNameField,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidPhoneNumber,
    TResult Function(T? failedValue)? invalidNameField,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_InvalidNameField<T> value) invalidNameField,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_InvalidNameField<T> value)? invalidNameField,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_InvalidNameField<T> value)? invalidNameField,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class _ShortPassword<T> implements ValueFailure<T> {
  const factory _ShortPassword({T? failedValue}) = _$_ShortPassword<T>;

  @override
  T? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidPhoneNumberCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$InvalidPhoneNumberCopyWith(_InvalidPhoneNumber<T> value,
          $Res Function(_InvalidPhoneNumber<T>) then) =
      __$InvalidPhoneNumberCopyWithImpl<T, $Res>;
  @override
  $Res call({T? failedValue});
}

/// @nodoc
class __$InvalidPhoneNumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidPhoneNumberCopyWith<T, $Res> {
  __$InvalidPhoneNumberCopyWithImpl(_InvalidPhoneNumber<T> _value,
      $Res Function(_InvalidPhoneNumber<T>) _then)
      : super(_value, (v) => _then(v as _InvalidPhoneNumber<T>));

  @override
  _InvalidPhoneNumber<T> get _value => super._value as _InvalidPhoneNumber<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_InvalidPhoneNumber<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_InvalidPhoneNumber<T> implements _InvalidPhoneNumber<T> {
  const _$_InvalidPhoneNumber({this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPhoneNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvalidPhoneNumber<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$InvalidPhoneNumberCopyWith<T, _InvalidPhoneNumber<T>> get copyWith =>
      __$InvalidPhoneNumberCopyWithImpl<T, _InvalidPhoneNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) shortPassword,
    required TResult Function(T? failedValue) invalidPhoneNumber,
    required TResult Function(T? failedValue) invalidNameField,
  }) {
    return invalidPhoneNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidPhoneNumber,
    TResult Function(T? failedValue)? invalidNameField,
  }) {
    return invalidPhoneNumber?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidPhoneNumber,
    TResult Function(T? failedValue)? invalidNameField,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_InvalidNameField<T> value) invalidNameField,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_InvalidNameField<T> value)? invalidNameField,
  }) {
    return invalidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_InvalidNameField<T> value)? invalidNameField,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _InvalidPhoneNumber<T> implements ValueFailure<T> {
  const factory _InvalidPhoneNumber({T? failedValue}) =
      _$_InvalidPhoneNumber<T>;

  @override
  T? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$InvalidPhoneNumberCopyWith<T, _InvalidPhoneNumber<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidNameFieldCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$InvalidNameFieldCopyWith(_InvalidNameField<T> value,
          $Res Function(_InvalidNameField<T>) then) =
      __$InvalidNameFieldCopyWithImpl<T, $Res>;
  @override
  $Res call({T? failedValue});
}

/// @nodoc
class __$InvalidNameFieldCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidNameFieldCopyWith<T, $Res> {
  __$InvalidNameFieldCopyWithImpl(
      _InvalidNameField<T> _value, $Res Function(_InvalidNameField<T>) _then)
      : super(_value, (v) => _then(v as _InvalidNameField<T>));

  @override
  _InvalidNameField<T> get _value => super._value as _InvalidNameField<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_InvalidNameField<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_InvalidNameField<T> implements _InvalidNameField<T> {
  const _$_InvalidNameField({this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidNameField(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvalidNameField<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$InvalidNameFieldCopyWith<T, _InvalidNameField<T>> get copyWith =>
      __$InvalidNameFieldCopyWithImpl<T, _InvalidNameField<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) shortPassword,
    required TResult Function(T? failedValue) invalidPhoneNumber,
    required TResult Function(T? failedValue) invalidNameField,
  }) {
    return invalidNameField(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidPhoneNumber,
    TResult Function(T? failedValue)? invalidNameField,
  }) {
    return invalidNameField?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidPhoneNumber,
    TResult Function(T? failedValue)? invalidNameField,
    required TResult orElse(),
  }) {
    if (invalidNameField != null) {
      return invalidNameField(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_InvalidNameField<T> value) invalidNameField,
  }) {
    return invalidNameField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_InvalidNameField<T> value)? invalidNameField,
  }) {
    return invalidNameField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_InvalidNameField<T> value)? invalidNameField,
    required TResult orElse(),
  }) {
    if (invalidNameField != null) {
      return invalidNameField(this);
    }
    return orElse();
  }
}

abstract class _InvalidNameField<T> implements ValueFailure<T> {
  const factory _InvalidNameField({T? failedValue}) = _$_InvalidNameField<T>;

  @override
  T? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$InvalidNameFieldCopyWith<T, _InvalidNameField<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
