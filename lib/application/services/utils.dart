// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:github_issues/application/redux/actions/fetch_issues_action.dart';
import 'package:github_issues/application/redux/flags/flags.dart';
import 'package:github_issues/application/redux/states/app_state.dart';
import 'package:github_issues/infrastructure/repositories/app_http_client.dart';
import 'package:intl/intl.dart';

class Utils {
  static String pluralizeText({
    required int count,
    required String singularText,
  }) {
    if (count <= 1) return singularText;

    return singularText + 's';
  }

  static String formatDate({required dynamic date}) {
    DateFormat format = DateFormat('dd MMMM, yyyy');
    return format.format(date);
  }

  static bool checkIfWaiting(
      {required String flag, required BuildContext context}) {
    return StoreProvider.state<AppState>(context)!.wait!.isWaitingFor(flag);
  }

  static fetchIssues({required BuildContext context}) {
    StoreProvider.dispatch(
      context,
      FetchIssuesAction(
        client: AppHttpClient(),
        context: context,
        flag: fetchIssuesFlag,
      ),
    );
  }
}
