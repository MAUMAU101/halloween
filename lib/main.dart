import 'package:flutter/material.dart';
import 'package:triki_triki2/config/theme/app_theme.dart';
import 'package:triki_triki2/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 4).theme(),
      home: const HomeScreen(),
    );
  }
}