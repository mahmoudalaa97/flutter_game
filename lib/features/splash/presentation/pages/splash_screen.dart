import 'package:flutter/material.dart';
import 'package:flutter_game_gdg/core/constants/routes.dart';
import 'package:flutter_game_gdg/core/di/service_locator.dart';
import 'package:flutter_game_gdg/core/services/firebase_auth_service.dart';
import 'package:flutter_game_gdg/features/splash/presentation/widgets/splash_logo.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkAuthentication();
  }

  void _checkAuthentication() {
    Future.delayed(const Duration(seconds: 2), () {
      final firebaseAuthService = getIt.get<FirebaseAuthService>();
      final user = firebaseAuthService.getCurrentUser();
      if (user != null) {
        context.go(Routes.home);
      } else {
        context.go(Routes.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SplashLogoWidget(),
      ),
    );
  }
}
