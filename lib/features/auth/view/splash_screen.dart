import 'package:flutter/material.dart';
import 'package:login_signup/features/auth/widgets/logo_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                const LogoText(),
                Image.asset(
                  'assets/images/sign up photo.jpg',
                  height: 350,
                  width: MediaQuery.of(context).size.width * 0.9,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 16),
                const Text(
                  'LOREM IPSUM',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Prime',
                    letterSpacing: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 12),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'Lorem Ipsum is a dummy text used as placeholder',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'inter',
                      letterSpacing: 2,
                      height: 1.5,
                      color: Color(0xff515151),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 320,
            bottom: 450,
            left: 71,
            child: SvgPicture.asset(
              'assets/images/line.svg',
            ),
          ),
          Positioned(
            top: 220,
            left: 45,
            child: SizedBox(
              width: 53.53,
              height: 33.24,
              child: SvgPicture.asset(
                'assets/images/light.svg',
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 200,
            bottom: 480,
            left: 59,
            child: SvgPicture.asset(
              'assets/images/line.svg',
            ),
          ),
          Positioned(
            top: 180,
            left: 100,
            child: SizedBox(
              width: 53.53,
              height: 33.24,
              child: SvgPicture.asset(
                'assets/images/light.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
