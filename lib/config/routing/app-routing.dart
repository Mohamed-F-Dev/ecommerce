import 'package:flutter/material.dart';
import 'package:fluttertest/features/auth/ui/screen/home_screen.dart';
import 'package:fluttertest/features/auth/ui/screen/login_screen.dart';
import 'package:fluttertest/features/auth/ui/screen/signup_screen.dart';
import 'package:fluttertest/onboarding.dart';
import 'package:fluttertest/welcome.dart';

class AppRouting {
  static const String home = "home";
  static const String onboarding = "onboarding";
  static const String login = "login";
  static const String signup = "signup";

  static Route onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case '/':
        return MaterialPageRoute(
          builder: (final context) => const WelcomeScreen(),
        );

      case onboarding:
        return MaterialPageRoute(
          builder: (final context) => const OnboardingScreen(),
        );
      case login:
        return MaterialPageRoute(
          builder: (final context) => const LoginScreen(),
        );
      case signup:
        return MaterialPageRoute(
          builder: (final context) =>  SignupScreen(),
        );
      case home:
        return MaterialPageRoute(builder: (final context) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (final context) => const Center(child: Text("no routing")),
        );
    }
  }
}
