import 'package:flutter/material.dart';
import 'package:fluttertest/core/utils/app_validation.dart';
import 'package:fluttertest/widgets/custom_text_field.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({
    super.key,
    required this.nameFocus,
    required this.emailFocus,
    required this.passwordFocus,
    required this.confirmPasswordFocus,
    required this.passwordController,
    required this.confirmPasswordcontroller,
    required this.nameController,
    required this.emailController,
    required this.formKey,
  });

  final FocusNode nameFocus;
  final FocusNode emailFocus;
  final FocusNode passwordFocus;
  final FocusNode confirmPasswordFocus;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordcontroller;
  final TextEditingController nameController;
  final TextEditingController emailController;

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: CustomTextField(
              controller: nameController,
              validator: AppValidators.validateName,
              hintText: 'Enter your name',
              focusNode: nameFocus,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(emailFocus);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: CustomTextField(
              validator: AppValidators.validateEmail,
              controller: emailController,
              hintText: 'Email address',
              focusNode: emailFocus,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(passwordFocus);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: CustomTextField(
              controller: passwordController,
              validator: AppValidators.validatePassword,
              hintText: 'Password',
              obsecureText: true,
              focusNode: passwordFocus,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(confirmPasswordFocus);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: CustomTextField(
              controller: confirmPasswordcontroller,
              validator: (value) {
                return AppValidators.validateConfirmPassword(
                  value,
                  passwordController.text,
                );
              },
              hintText: 'Confirm Password',
              obsecureText: true,
              focusNode: confirmPasswordFocus,
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (_) {
                FocusScope.of(context).unfocus();
              },
            ),
          ),
        ],
      ),
    );
  }
}
