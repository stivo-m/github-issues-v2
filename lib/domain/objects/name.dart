// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:github_issues/domain/failures/value_failures.dart';
import 'package:github_issues/domain/validators/validators.dart';

class Name {
  final Either<ValueFailure<String>, String> value;

  factory Name.withValue({required String input}) {
    return Name._(
      validateName(input),
    );
  }

  const Name._(this.value);

  Map<String, dynamic> toMap() {
    return {'value': value.getOrElse(() => '').toString()};
  }

  factory Name.fromMap(Map<String, dynamic> map) {
    return Name.withValue(input: map['value']);
  }

  String toJson() => json.encode(toMap());

  factory Name.fromJson(String source) => Name.fromMap(json.decode(source));
}
