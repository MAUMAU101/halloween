import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:triki_triki2/config/router/app_router.dart';
import 'package:triki_triki2/config/theme/app_theme.dart';
import 'package:triki_triki2/presentation/providers/theme_provider.dart';

void main() {
  runApp(const ProviderScope (child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
Widget build(BuildContext context, WidgetRef ref) {
    final AppTheme appTheme = ref.watch(themeNotifierProvider);
    return MaterialApp.router(
      title: 'triki_triki2',
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
      routerConfig: appRouter,
    );
  }
}