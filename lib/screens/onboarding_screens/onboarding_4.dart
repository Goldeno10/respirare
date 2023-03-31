import 'package:flutter/material.dart';

class OnboardingPage4 extends StatelessWidget {
  const OnboardingPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity != null) {
          if (details.primaryVelocity! > 0) {
            Navigator.pushNamed(context, '/onboarding3');
          } else {
            print('Swiped left');
          }
        }
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50.0),
                  const Image(
                    image:
                        AssetImage('assets/images/respirare _ogo_blue1_1.png'),
                  ),
                  const Text(
                    'RESPIRARE',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0E5480),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    "Let's get started!",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF101623),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    width: 250.0,
                    height: 48.0,
                    child: const Text(
                      "Login to enjoy the features we've provided and stay healthy!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF717784),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  SizedBox(
                    height: 56.0,
                    width: 263.0,
                    child: OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF0E5480)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                      ),
                      onPressed: () => print('Login'),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 56.0,
                    width: 263.0,
                    child: OutlinedButton(
                      onPressed: () => print('Sign Up'),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Color(0xFF0E5480),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
