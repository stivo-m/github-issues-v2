// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:github_issues/presentation/authentication/login_page.dart';
import 'package:github_issues/presentation/home/home.dart';
import 'package:github_issues/presentation/routes/routes.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeRoute:
        return MaterialPageRoute(
          builder: (_) => const Home(),
        );

      case AppRoutes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => LoginPage(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
