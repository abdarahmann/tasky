import 'package:flutter/material.dart';

import '../../features/onboarding/onboarding_screen.dart';

class Routes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';
  static const String onboarding = '/onboarding';
  
}

class RoutesManager {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const Scaffold());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const Scaffold());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const Scaffold());
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      default:
        return MaterialPageRoute(builder: (_) =>  Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }
  }
}
