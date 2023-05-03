import 'package:demo_project/config/app_theme.dart';
import 'package:demo_project/features/login/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

import 'core/injection/injection.dart';

void main() async {
  await configureInjection();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const LoginPage(),
    );
  }
}
