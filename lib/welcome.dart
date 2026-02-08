import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertest/core/common/custom_welcome_button.dart';
import 'package:fluttertest/onboarding.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundImage(),
          _filtter(),
          _foregroundImage(),

          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.6),
                ],
              ),
            ),
          ),
          _welcomeBody(context),
        ],
      ),
    );
  }

  SafeArea _welcomeBody(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Welcome to GemStore!',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  shadows: [const Shadow(blurRadius: 4, color: Colors.white)],

                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'The home for a fashionista',
                style: TextStyle(color: Colors.white70, fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              CustomWelcomeButton(
                text: 'Get Started',
                onPressrd: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnboardingScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Center _foregroundImage() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .6),
              blurRadius: 8,
              spreadRadius: 6,
            ),
          ],
        ),
        child: Image.asset('assets/images/welcome_bg.png', height: 600),
      ),
    );
  }

  BackdropFilter _filtter() {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(color: Colors.transparent),
    );
  }

  Container _backgroundImage() {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/welcome_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
