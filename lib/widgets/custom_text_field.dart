import 'package:flutter/material.dart';
import 'package:fluttertest/config/theme/app_colors.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    this.obsecureText = false,
    this.focusNode,
    this.textInputType,
    this.controller,
    this.onFieldSubmitted,
    this.textInputAction,
    this.validator,
    this.isPassword = false,
    //this.is_PasswordHidden=false,
  });
  final String hintText;
  final bool obsecureText;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final bool isPassword;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isPasswordHidden = true;

  @override
  void initState() {
    super.initState();
    isPasswordHidden = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      textInputAction: widget.textInputAction,
      onFieldSubmitted: widget.onFieldSubmitted,
      controller: widget.controller,
      keyboardType: widget.textInputType,
      focusNode: widget.focusNode,
      cursorColor: Colors.black,
      obscureText: widget.isPassword ? isPasswordHidden : false,

      decoration: InputDecoration(
        suffixIcon:
            widget.isPassword
                ? IconButton(
                  iconSize: 15,
                  onPressed: () {
                    isPasswordHidden = !isPasswordHidden;
                    setState(() {});
                  },
                  icon: Icon(
                    isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                  ),
                )
                : null,
        hintText: widget.hintText,
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












//  IconButton(
//           iconSize: 15,
//           onPressed: () {
//             is_PasswordHidden = !is_PasswordHidden;
//             setState(() {});
//           },
//           icon: Icon(
//             is_PasswordHidden ? Icons.visibility_off : Icons.visibility,
//           ),
//         ),