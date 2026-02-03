//مش هعمل ريفكتور دلوقتى عشان لسه مش فاهمه اوى هتابع سامى ثروت الاول عشان مبوظش الدنيا مع شات جى بى تى
import 'package:flutter/material.dart';
import 'package:fluttertest/config/theme/theme_controler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _MyAppState();
}
class _MyAppState extends State<LoginScreen> {
  bool _isPasswordHidden = true;
  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(40),
        children: [
          Container(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: const Icon(Icons.brightness_6),
              onPressed: () {
                final isDark = Theme.of(context).brightness == Brightness.dark;
                context.read<ThemeCubit>().changeTheme(isdark: !isDark);
              },
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.symmetric(
              vertical: 60,
            ),
            child: Text(
              """Log into
your account""",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                // color: Color(0xff000000),
                fontSize: 24,
                fontWeight: FontWeight.w700,
                height: 2,
              ),
            ),
          ),
          Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  width: 310,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email address",
                      labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        //color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: 310,
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _isPasswordHidden,
                    decoration: InputDecoration(
                      suffix: IconButton(
                        onPressed: (){
                          setState(() {
                            _isPasswordHidden = !_isPasswordHidden;
                          });
                        },
                        iconSize: 15,
                        icon: Icon(
                          _isPasswordHidden
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        // color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: TextButton(
              onPressed: (){},
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  // color: Color(0xff000000),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child:MaterialButton(
              minWidth: 150,
              height: 50,
              onPressed: (){},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.5),),
              color: Theme.of(context).colorScheme.primary,
              textColor: Theme.of(context).colorScheme.onPrimary,
              // color: const Color(0xff2D201C),
              // textColor: const Color(0xffFFFFFF),
              child: const Text(
                "LOG IN",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
           Text(
            "or log in with?",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              // color: Color(0xff000000),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onSurface,
                    // color: Colors.black,
                    width: 0.2,
                  ),
                ),
                child: IconButton(
                  onPressed: (){},
                  iconSize: 23,
                  icon: const Icon(Icons.apple),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onSurface,
                    // color: Colors.black,
                    width: 0.2,
                  ),
                ),
                child: IconButton(
                  onPressed: (){},
                  iconSize: 23,
                  icon: const Icon(Icons.g_mobiledata),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onSurface,
                    // color: Colors.black,
                    width: 0.2,
                  ),
                ),
                child: IconButton(
                  onPressed: (){},
                  iconSize: 23,
                  icon: const Icon(Icons.facebook_sharp),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                "Don’t have an account?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  // color: Color(0xff000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextButton(
                onPressed: (){},
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    // color: Color(0xff000000),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}