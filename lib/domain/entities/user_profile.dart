// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:github_issues/domain/objects/email.dart';
import 'package:github_issues/domain/objects/name.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  factory UserProfile({
    Name? firstName,
    Name? lastName,
    EmailAddress? emailAddress,
    String? role,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  factory UserProfile.initial() => UserProfile(
        emailAddress: null,
        firstName: null,
        lastName: null,
        role: null,
      );
}
