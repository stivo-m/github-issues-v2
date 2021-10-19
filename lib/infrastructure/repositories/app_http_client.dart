import 'package:github_issues/infrastructure/facades/i_http_client_facade.dart';
import 'package:http/http.dart';

class AppHttpClient implements IHttpClient {
  @override
  Future<Response> callRest(
      {required String endpoint, Map<String, dynamic>? variables}) {
    throw UnimplementedError();
  }

  @override
  String? parseError({required Map<String, dynamic> map}) {
    throw UnimplementedError();
  }

  @override
  Future<Response> query(
      {required String query, Map<String, dynamic>? variables}) {
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> toMap({required Response response}) {
    throw UnimplementedError();
  }
}
