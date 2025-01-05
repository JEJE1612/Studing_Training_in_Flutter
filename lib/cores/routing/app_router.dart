import 'package:flutter/material.dart';
import 'package:flutter_complete_advanced/cores/routing/routes.dart';
import 'package:flutter_complete_advanced/features/login/ui/login_screen.dart';
import 'package:flutter_complete_advanced/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) =>const LoginScreen());

      default:
        return MaterialPageRoute(builder: (_) =>const Placeholder());
    }
  }
}
