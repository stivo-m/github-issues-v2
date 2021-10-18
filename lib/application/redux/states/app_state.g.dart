// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      issues: (json['issues'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : GithubIssue.fromJson(e as Map<String, dynamic>))
          .toList(),
      userProfile: json['userProfile'] == null
          ? null
          : UserProfile.fromJson(json['userProfile'] as Map<String, dynamic>),
      authStatus: $enumDecodeNullable(_$AuthStatusEnumMap, json['authStatus'],
          unknownValue: AuthStatus.unathenticated),
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'issues': instance.issues,
      'userProfile': instance.userProfile,
      'authStatus': _$AuthStatusEnumMap[instance.authStatus],
    };

const _$AuthStatusEnumMap = {
  AuthStatus.uninitiated: 'uninitiated',
  AuthStatus.authenticated: 'authenticated',
  AuthStatus.unathenticated: 'unathenticated',
};
