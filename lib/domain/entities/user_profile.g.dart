// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    _$_UserProfile(
      firstName: json['firstName'] == null
          ? null
          : Name.fromJson(json['firstName'] as String),
      lastName: json['lastName'] == null
          ? null
          : Name.fromJson(json['lastName'] as String),
      emailAddress: json['emailAddress'] == null
          ? null
          : EmailAddress.fromJson(json['emailAddress'] as String),
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'emailAddress': instance.emailAddress,
      'role': instance.role,
    };
