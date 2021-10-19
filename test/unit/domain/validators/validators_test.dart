// Package imports:
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:github_issues/domain/failures/value_failures.dart';
import 'package:github_issues/domain/validators/validators.dart';

void main() {
  group('Validators', () {
    test('should validate correct name', () {
      final Either<ValueFailure<String>, String> validName =
          validateName('name');

      validName.fold(
        (l) => expect(l, null),
        (r) => expect(r, 'name'),
      );
    });

    test('should validate empty name', () {
      final Either<ValueFailure<String>, String> invalidName = validateName('');

      invalidName.fold(
        (l) => expect(l, isA<ValueFailure>()),
        (r) => expect(r, null),
      );
    });

    test('should validate correct email', () {
      const String email = 'test@email.com';
      final Either<ValueFailure<String>, String> validEmail =
          validateEmailAddress(email);

      validEmail.fold(
        (l) => expect(l, null),
        (r) => expect(r, email),
      );
    });

    test('should validate empty and invalid email', () {
      final Either<ValueFailure<String>, String> invalidEmail =
          validateEmailAddress('');

      invalidEmail.fold(
        (l) => expect(l, isA<ValueFailure>()),
        (r) => expect(r, null),
      );
    });
  });
}
