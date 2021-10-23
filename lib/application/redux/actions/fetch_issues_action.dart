import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:github_issues/application/graphql/queries.dart';
import 'package:github_issues/application/redux/states/app_state.dart';
import 'package:github_issues/infrastructure/facades/i_http_client_facade.dart';
import 'package:github_issues/domain/entities/graph_issues_payload.dart';

class FetchIssuesAction extends ReduxAction<AppState> {
  final IHttpClient client;
  final BuildContext context;
  final String flag;

  FetchIssuesAction({
    required this.client,
    required this.context,
    required this.flag,
  });

  @override
  Future<AppState?> reduce() async {
    final Map<String, dynamic>? response = await client.query(
      query: getIssuesQuerry,
      variables: getIssuesQueryVariables(count: 100),
    );

    final Map<String, dynamic> data = response?['data']['viewer']['issues'];

    final GraphIssuesPayload payload = GraphIssuesPayload.fromJson(data);

    return store.state.copyWith.call(
      issues: payload.issues,
    );
  }
}
