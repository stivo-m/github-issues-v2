import 'package:flutter_test/flutter_test.dart';
import 'package:github_issues/domain/entities/user_profile.dart';
import 'package:github_issues/domain/objects/email.dart';
import 'package:github_issues/domain/objects/name.dart';

void main() {
  group('UserProfile', () {
    test('should convert to json', () {
      const String name = 'name';
      const String email = 'test@email.com';
      final UserProfile profile = UserProfile(
        emailAddress: EmailAddress.withValue(input: email),
        firstName: Name.withValue(input: name),
        lastName: Name.withValue(input: name),
      );

      expect(profile.emailAddress, isA<EmailAddress>());
      expect(profile.emailAddress?.value.getOrElse(() => ''), email);

      expect(profile.firstName, isA<Name>());
      expect(profile.firstName?.value.getOrElse(() => ''), name);

      expect(profile.lastName, isA<Name>());
      expect(profile.lastName?.value.getOrElse(() => ''), name);
    });
  });
}
