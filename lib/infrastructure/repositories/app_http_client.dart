// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:github_issues/domain/objects/app_strings.dart';
import 'package:github_issues/domain/objects/endpoints.dart';
import 'package:github_issues/infrastructure/repositories/cache_repository.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_graphql_client/graph_client.dart';

// Project imports:
import 'package:github_issues/infrastructure/facades/i_http_client_facade.dart';

class AppHttpClient implements IHttpClient {
  final CacheRepository cacheRepository = CacheRepository();
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
  Future<Map<String, dynamic>?> query(
      {required String query,
      String? endpoint = githubGraphqlEndpoint,
      Map<String, dynamic>? variables}) async {
    CacheRepository cacheRepository = CacheRepository();
    final dynamic data = await SimpleCall.callAPI(
      queryString: query,
      variables: variables!,
      graphClient: GraphQlClient(
        cacheRepository.getAccessToken(tokenName: authTokenText)!,
        endpoint!,
      ),
    );

    return data;
  }

  @override
  Future<Map<String, dynamic>> toMap({required http.Response response}) {
    return Future<Map<String, dynamic>>.value(
        json.decode(response.body) as Map<String, dynamic>);
  }
}
