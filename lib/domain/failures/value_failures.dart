// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    T? failedValue,
  }) = _InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    T? failedValue,
  }) = _ShortPassword<T>;
  const factory ValueFailure.invalidPhoneNumber({
    T? failedValue,
  }) = _InvalidPhoneNumber<T>;
  const factory ValueFailure.invalidNameField({
    T? failedValue,
  }) = _InvalidNameField<T>;
}
