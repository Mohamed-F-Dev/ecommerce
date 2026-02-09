import 'package:flutter/material.dart';
import 'package:fluttertest/config/routing/app-routing.dart';
import 'package:fluttertest/widgets/custom_button.dart';
import 'package:fluttertest/widgets/custom_rounded_icon.dart';
import 'package:fluttertest/widgets/sign_up_form.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final FocusNode nameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final FocusNode confirmPasswordFocus = FocusNode();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  void dispose() {
    nameFocus.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
    confirmPasswordFocus.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildIntro(),
              _buildSignUpFields(),
              _buildButton(),
              _signUpWith(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signUpWith() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          alignment: Alignment.center,
          child: Text(
            'or sign up with',
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.5),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.48,
            ),
          ),
        ),

        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomRoundedIcon(icon: FontAwesomeIcons.apple),
            SizedBox(width: 20),
            CustomRoundedIcon(icon: FontAwesomeIcons.google),
            SizedBox(width: 20),
            CustomRoundedIcon(icon: Icons.facebook),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Already have an account?'),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, AppRouting.login);
              },
              child: const Text(
                'Log In',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSignUpFields() {
    return SignUpForm(
      nameFocus: nameFocus,
      emailFocus: emailFocus,
      passwordFocus: passwordFocus,
      confirmPasswordFocus: confirmPasswordFocus,
      passwordController: passwordController,
      confirmPasswordcontroller: confirmPasswordController,
      nameController: nameController,
      emailController: emailController,
      formKey: formKey,
    );
  }

  Container _buildButton() {
    return Container(
      alignment: Alignment.center,
      child: CustomButton(
        onTap: () {
          if (formKey.currentState!.validate()) {
            Navigator.pushReplacementNamed(context, AppRouting.home);
          }
        },
      ),
    );
  }
}

Padding _buildIntro() {
  return const Padding(
    padding: EdgeInsets.only(top: 50, bottom: 15),
    child: Text(
      'Create\nyour account',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, height: 2),
    ),
  );
}
