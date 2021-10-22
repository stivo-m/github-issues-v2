// Package imports:
import 'package:http/http.dart';

/// [IHttpClient] provides the basic graphQl client that
/// is used within the application to make queries to both
/// a Grapqhl endpoint, or to call a REST endpoint

abstract class IHttpClient {
  /// Used when making a graphql query/mutation
  Future<Response> query(
      {required String query, Map<String, dynamic>? variables});

  /// Used when making a call to a REST endpoint
  Future<Response> callRest(
      {required String endpoint, Map<String, dynamic>? variables});

  /// used to destructure the response into a Map<String, dynamic>
  Future<Map<String, dynamic>> toMap({required Response response});

  /// Used to parse any erros that are returned by the client
  String? parseError({required Map<String, dynamic> map});
}
