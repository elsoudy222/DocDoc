import 'package:doc_doc/core/di/dependency_injection.dart';
import 'package:doc_doc/core/route/routes.dart';
import 'package:doc_doc/features/home/screens/home_screen.dart';
import 'package:doc_doc/features/login/logic/login_cubit.dart';
import 'package:doc_doc/features/sign-up/logic/signup_cubit.dart';
import 'package:doc_doc/features/sign-up/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/screens/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (BuildContext context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (context) => const HomeScreen());
        case Routes.signupScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (BuildContext context) => getIt<SignupCubit>(),
                child: const SignupScreen()));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No Route Defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
