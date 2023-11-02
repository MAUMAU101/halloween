import 'package:flutter/material.dart';
import 'package:triki_triki2/config/router/app_router.dart';
import 'package:triki_triki2/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 4).theme(),
     // home: const HomeScreen(),
      routerConfig: appRouter,
    );
  }
}