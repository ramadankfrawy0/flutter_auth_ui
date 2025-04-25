import 'package:flutter/material.dart';
import 'package:login_signup/core/constants/route_names.dart';
import 'package:login_signup/features/auth/view/%20login_page.dart';
import 'package:login_signup/features/auth/view/signup_page.dart';
import 'package:login_signup/features/auth/view/splash_screen.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RouteNames.login:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case RouteNames.signup:
        return MaterialPageRoute(builder: (context) => const SignupPage());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
