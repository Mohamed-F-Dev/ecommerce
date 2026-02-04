import 'package:flutter/material.dart';
import 'package:fluttertest/config/theme/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              _buildLoginFields(),
              _buildBottun(),
              _signUpWith(),
            ],
          ),
        ),
      ),
    );
  }

  Column _signUpWith() {
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
              onPressed: () {},
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

  Column _buildLoginFields() {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: CustomTextField(hintText: 'Enter your name'),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: CustomTextField(hintText: 'Email address'),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: CustomTextField(hintText: 'Password', obsecureText: true),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: CustomTextField(
            hintText: 'Confirm Password',
            obsecureText: true,
          ),
        ),
      ],
    );
  }

  Container _buildBottun() {
    return Container(alignment: Alignment.center, child: const CustomButton());
  }
}

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

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.obsecureText = false,
  });
  final String hintText;
  final bool obsecureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
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

Padding _buildIntro() {
  return const Padding(
    padding: EdgeInsets.only(top: 50, bottom: 15),
    child: Text(
      'Create\nyour acount',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, height: 2),
    ),
  );
}
