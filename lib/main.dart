import 'package:auto_route/auto_route.dart';
import 'package:demo_project/config/app_theme.dart';
import 'package:flutter/material.dart';

import 'core/injection/injection.dart';
import 'core/routes/app_router.gr.dart';

void main() async {
  await configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(_appRouter),
    );
  }
}
