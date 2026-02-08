import 'package:flutter/material.dart';
import 'package:fluttertest/onboarding.dart';

class CustomWelcomeButton extends StatelessWidget {
  const CustomWelcomeButton({
    super.key,
    required this.text,
    required this.onPressrd,
  });
  final String text;
  final void Function()? onPressrd;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressrd,
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.white, width: 2),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Colors.white.withValues(alpha: 0.2),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
