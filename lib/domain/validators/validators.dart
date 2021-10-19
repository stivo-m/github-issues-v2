// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:github_issues/domain/failures/value_failures.dart';

// validate name
Either<ValueFailure<String>, String> validateName(String name) {
  if (name.isEmpty || name == '') {
    return left(ValueFailure.invalidNameField(failedValue: name));
  } else {
    return right(name);
  }
}

// validate email value
Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const String emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure<String>.invalidEmail(failedValue: input));
  }
}
