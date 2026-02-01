import 'package:flutter/material.dart';
import 'package:fluttertest/main.dart';

class AppRouting {
  static const String home = "home";

  static Route onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case home:
        return MaterialPageRoute(builder: (final context) => const Home());
      default:
        return MaterialPageRoute(
          builder: (final context) => const Center(child: Text("no routing")),
        );
    }
  }
}
