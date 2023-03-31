import 'package:flutter/material.dart';
import 'package:respirare/screens/onboarding_screens/onboarding_4.dart';
import 'package:respirare/screens/onboarding_screens/onbording_1.dart';
import 'package:respirare/screens/onboarding_screens/onbording_2.dart';
import 'package:respirare/screens/onboarding_screens/onbording_3.dart';
import 'package:respirare/screens/onboarding_screens/spash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget  is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      initialRoute: 'splashScreen',
      routes: {
        '/spashScreen': (context) => const SplashScreen(),
        '/onboarding1': (context) => const OnboardingPage1(),
        '/onboarding2': (context) => const OnboardingPage2(),
        '/onboarding3': (context) => const OnboardingPage3(),
        '/onboarding4': (context) => const OnboardingPage4(),
      },
    );
  }
}
