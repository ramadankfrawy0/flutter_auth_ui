import 'package:flutter/material.dart';
import 'package:login_signup/core/constants/route_names.dart';
import 'package:login_signup/features/auth/widgets/custom_elevated_button.dart';
import 'package:login_signup/features/auth/widgets/custom_text_field.dart';
import 'package:login_signup/features/auth/widgets/logo_text.dart';

class LoginPage  extends StatelessWidget {
  const LoginPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 80),
                    const LogoText(),
                    Text(
                      'Welcome back!',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Roboto',
                          letterSpacing: 2,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Log in to existing LOGO account',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                          letterSpacing: 2,
                          color: Color(0xFF515151)),
                    ),
                    const SizedBox(height: 8),
                    CustomTextField(
                      controller: TextEditingController(),
                      hintText: 'Username',
                      prefixIcon: Icons.person_2_outlined,
                      obscureText: false,
                    ),
                    CustomTextField(
                      controller: TextEditingController(),
                      hintText: 'Password',
                      prefixIcon: Icons.lock_outline_rounded,
                      obscureText: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18, top: 0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Color(0xFF515151),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ),
                    ),
                    GradientElevatedButton(
                      text: 'LOG IN',
                      width: 200,
                      height: 55,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Or sign up using',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF282828),
                        )),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/facebook_logo_icon_147291.png',
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(width: 32),
                        Image.asset(
                          'assets/icons/google_icon-icons.com_62736.png',
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(width: 32),
                        Image.asset(
                          'assets/icons/social_apple_mac_65.png',
                          width: 40,
                          height: 40,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Color(0xFF515151),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, RouteNames.signup);},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      
      ],
    );
  }
}
