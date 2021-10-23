// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

// Project imports:
import 'package:github_issues/application/redux/states/app_state.dart';
import 'package:github_issues/domain/objects/app_strings.dart';
import 'package:github_issues/infrastructure/repositories/cache_repository.dart';
import 'package:github_issues/presentation/routes/router_generator.dart';
import 'package:github_issues/presentation/routes/routes.dart';
import 'package:github_issues/presentation/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Store<AppState> store =
      Store<AppState>(initialState: AppState.initial());
  await dotenv.load();
  await Firebase.initializeApp();
  await CacheRepository.init();
  CacheRepository cacheRepository = CacheRepository();

  final bool _isTokenAvailable =
      cacheRepository.getAccessToken(tokenName: authTokenText) != null;

  runApp(MyApp(
    store: store,
    isTokenAvailable: _isTokenAvailable,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.store,
    required this.isTokenAvailable,
  }) : super(key: key);
  final Store<AppState> store;
  final bool isTokenAvailable;

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: appName,
        theme: AppTheme.lightTheme(),
        darkTheme: AppTheme.darkTheme(),
        themeMode: store.state.themeMode,
        onGenerateRoute: RouterGenerator.generateRoute,
        initialRoute:
            isTokenAvailable ? AppRoutes.homeRoute : AppRoutes.loginRoute,
      ),
    );
  }
}
