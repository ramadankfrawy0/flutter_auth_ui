import 'package:flutter/material.dart';
import 'package:login_signup/core/constants/route_names.dart';
import 'package:login_signup/features/auth/widgets/custom_elevated_button.dart';
import 'package:login_signup/features/auth/widgets/custom_text_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            const Center(
              child: Text(
                "Let's Get Started!",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto',
                    color: Colors.black),
              ),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                "Create an account on MNZL to get all features",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  color: Color(0xFF515151),
                ),
              ),
            ),
            const SizedBox(height: 8),
            CustomTextField(
              controller: TextEditingController(),
              hintText: 'First Name',
              prefixIcon: Icons.person_2_outlined,
              obscureText: false,
            ),
            CustomTextField(
              controller: TextEditingController(),
              hintText: 'Last Name',
              prefixIcon: Icons.person_2_outlined,
              obscureText: false,
            ),
            CustomTextField(
              controller: TextEditingController(),
              hintText: 'User Name',
              prefixIcon: Icons.person_2_outlined,
              obscureText: false,
            ),
            CustomTextField(
              controller: TextEditingController(),
              hintText: 'Email',
              prefixIcon: Icons.email_outlined,
              obscureText: false,
            ),
            CustomTextField(
              controller: TextEditingController(),
              hintText: 'Password',
              prefixIcon: Icons.lock_outline_rounded,
              obscureText: true,
            ),
            CustomTextField(
              controller: TextEditingController(),
              hintText: 'Confirm Password',
              prefixIcon: Icons.lock_outline_rounded,
              obscureText: true,
            ),
            const SizedBox(height: 8),
            GradientElevatedButton(
              text: 'CREATE',
              width: 200,
              height: 55,
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Color(0xFF515151),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.login);
                  },
                  child: const Text(
                    'Login here',
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
        )),
      ),
    );
  }
}
