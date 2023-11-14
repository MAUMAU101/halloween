import 'package:flutter/material.dart';
import 'package:triki_triki2/theme/app_theme.dart';
import 'package:triki_triki2/config/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).getTheme(),
     // home: const HomeScreen()
    routerConfig: appRouter,
    );
  }
}
