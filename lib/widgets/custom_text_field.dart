import 'package:flutter/material.dart';
import 'package:fluttertest/config/theme/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.obsecureText = false,
    this.focusNode,
    this.textInputType,
    this.controller,
    this.onFieldSubmitted,
    this.textInputAction,
    this.validator,
  });
  final String hintText;
  final bool obsecureText;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      controller: controller,
      keyboardType: textInputType,
      focusNode: focusNode,
      cursorColor: Colors.black,
      obscureText: obsecureText,
      decoration: InputDecoration(
        hintText: hintText,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.scoundry),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
