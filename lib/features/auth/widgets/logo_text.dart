

import 'package:flutter/material.dart';
import 'package:login_signup/core/constants/app_color.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return  ShaderMask(
              shaderCallback: (rect) => const LinearGradient(
                colors: [
                  AppColor.primary,
                  AppColor.secondary,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(rect),
              blendMode: BlendMode.srcIn,
              child: Text(
                'LOGO',
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Prime',
                color: Colors.white,
                ),
              ),
            );
  }
}