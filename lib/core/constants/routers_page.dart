import 'package:flutter/material.dart';
import 'package:flutter_game_gdg/core/constants/routes.dart';
import 'package:flutter_game_gdg/features/auth/presentation/pages/login_screen.dart';
import 'package:flutter_game_gdg/features/auth/presentation/pages/signup_screen.dart';
import 'package:flutter_game_gdg/features/home/presentation/pages/home_screen.dart';
import 'package:flutter_game_gdg/features/splash/presentation/pages/splash_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: Routes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: Routes.login,
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: Routes.signup,
      builder: (context, state) => SignUpPage(),
    ),
    GoRoute(
      path: Routes.forgotPassword,
      builder: (context, state) => const Placeholder(),
    ),
    GoRoute(
      path: Routes.home,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
  initialLocation: Routes.splash,
);
