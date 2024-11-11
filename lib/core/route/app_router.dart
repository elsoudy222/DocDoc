
import 'package:doc_doc/core/route/routes.dart';
import 'package:flutter/material.dart';

import '../../features/login/screens/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

class AppRouter{

  Route generateRoute(RouteSettings settings){

    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) =>  Scaffold(
              body: Center(
                child: Text('No Route Defined for ${settings.name}'),
              ),
            ));
    }
  }

}