import 'package:flutter/material.dart';
import 'dart:async';
import 'package:respirare/screens/onboarding_screens/onbording_1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    void navigateToNextScreen(BuildContext context) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const OnboardingPage1()),
      );
    }

    Timer(const Duration(seconds: 2), () => navigateToNextScreen(context));

    return Scaffold(
        backgroundColor: const Color(0xFF0E5480),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage('assets/images/respirare_logo_white_1.png'),
              ),
              Text(
                'RESPIRARE',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ));
  }
}
