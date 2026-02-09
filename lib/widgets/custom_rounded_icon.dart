import 'package:flutter/material.dart';
import 'package:fluttertest/config/theme/app_colors.dart';

class CustomRoundedIcon extends StatelessWidget {
  const CustomRoundedIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.scoundry.withValues(alpha: .4)),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon)),
    );
  }
}