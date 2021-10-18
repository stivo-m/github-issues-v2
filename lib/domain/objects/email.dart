import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:github_issues/domain/failures/value_failures.dart';
import 'package:github_issues/domain/validators/validators.dart';

class EmailAddress {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress.withValue({required String input}) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);

  Map<String, dynamic> toMap() {
    return {
      'email': value.getOrElse(() => '').toString(),
    };
  }

  factory EmailAddress.fromMap(Map<String, dynamic> map) {
    return EmailAddress.withValue(
      input: map['email'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EmailAddress.fromJson(String source) =>
      EmailAddress.fromMap(json.decode(source));
}
