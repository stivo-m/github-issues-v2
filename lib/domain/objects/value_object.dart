// ignore: import_of_legacy_library_into_null_safe

// Package imports:
import 'package:dartz/dartz.dart';

abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueObject<T>, T> get value;

  @override
  // ignore: avoid_renaming_method_parameters
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
