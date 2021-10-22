// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

// Project imports:
import 'package:github_issues/application/redux/states/app_state.dart';
import 'package:github_issues/presentation/routes/router_generator.dart';
import 'package:github_issues/presentation/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Store<AppState> store =
      Store<AppState>(initialState: AppState.initial());
  await dotenv.load();
  await Firebase.initializeApp();
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.store,
  }) : super(key: key);
  final Store<AppState> store;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: RouterGenerator.generateRoute,
        initialRoute: AppRoutes.loginRoute,
      ),
    );
  }
}
