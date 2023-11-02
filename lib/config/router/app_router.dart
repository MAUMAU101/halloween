import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:triki_triki2/presentation/screens/buttons/ButtonsScreen%20.dart';
import 'package:triki_triki2/presentation/screens/cards/cards_screen.dart';
import 'package:triki_triki2/presentation/screens/home_screen.dart';


final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name:HomeScreen.screenName,
      builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name:ButtonsScreen.screenName,
      builder: (BuildContext context, GoRouterState state) =>
          const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.screenName,
      builder: (BuildContext context, GoRouterState state) =>
          const CardsScreen(),
    ),
  ],
);