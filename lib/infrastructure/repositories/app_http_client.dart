// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:http/http.dart' as http;

// Project imports:
import 'package:github_issues/infrastructure/facades/i_http_client_facade.dart';

class AppHttpClient implements IHttpClient {
  @override
  Future<http.Response> callRest(
      {required String endpoint, Map<String, dynamic>? variables}) async {
    return await http.post(
      Uri.parse(endpoint),
      body: json.encode(variables),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json"
      },
    );
  }

  @override
  String? parseError({required Map<String, dynamic> map}) {
    throw UnimplementedError();
  }

  @override
  Future<http.Response> query(
      {required String query, Map<String, dynamic>? variables}) {
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> toMap({required http.Response response}) {
    return Future<Map<String, dynamic>>.value(
        json.decode(response.body) as Map<String, dynamic>);
  }
}
