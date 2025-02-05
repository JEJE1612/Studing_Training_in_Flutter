import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_advanced/cores/routing/routes.dart';
import 'package:flutter_complete_advanced/features/home/ui/home_screen.dart';
import 'package:flutter_complete_advanced/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_complete_advanced/features/onboarding/onboarding_screen.dart';

import '../../features/login/ui/login_screen.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen());
      
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen());    
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context)=> getit<LoginCubit>()  ,
            child: LoginScreen())
          );

      default:
        return MaterialPageRoute(builder: (_) =>const Placeholder());
    }
  }
}
