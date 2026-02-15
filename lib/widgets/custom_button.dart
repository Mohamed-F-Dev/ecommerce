import 'package:flutter/material.dart';
import 'package:fluttertest/config/theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,  this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 41, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.scoundry.withValues(alpha: 1),
          borderRadius: BorderRadius.circular(26),
        ),
        child: const Text('Sign up', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
