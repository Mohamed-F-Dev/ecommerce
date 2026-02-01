import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertest/config/routing/app-routing.dart';
import 'package:fluttertest/config/theme/theme_controler.dart';
import 'package:fluttertest/features/auth/ui/screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyappState();
}

class _MyappState extends State<MyApp> {
  @override
  Widget build(final BuildContext context) {
    return BlocProvider(
      create: (final context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (final context, final theme) {
          return MaterialApp(
            theme: theme,
            home: const LoginScreen(),
            onGenerateRoute: AppRouting.onGenerateRoute,
          );
        },
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(final BuildContext context) {
    return const Placeholder();
  }
}
