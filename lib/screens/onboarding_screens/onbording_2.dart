import 'package:flutter/material.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity != null) {
          if (details.primaryVelocity! > 0) {
            Navigator.pushNamed(context, '/onboarding1');
          } else {
            Navigator.pushNamed(context, '/onboarding3');
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/onboarding4'),
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            color: Color(0xFFA1A8B0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50.0),
                  const Image(
                    image: AssetImage('assets/images/onboarding2_3.png'),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    padding: const EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 40.0),
                    height: 120.0,
                    width: 350.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Color.fromARGB(255, 240, 253, 254),
                    ),
                    child: const Text(
                      'Get personalized daily health tips',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Color(0xFF101623),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 4.0,
                              width: 20.0,
                              color: Colors.green.shade100,
                            ),
                            const SizedBox(width: 5.0),
                            Container(
                              height: 4.0,
                              width: 20.0,
                              color: const Color(0xFF199A8E),
                            ),
                            const SizedBox(width: 5.0),
                            Container(
                              height: 4.0,
                              width: 20.0,
                              color: Colors.green.shade100,
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, '/onboarding3'),
                          child: Container(
                            height: 56.0,
                            width: 56.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF0E5480),
                              borderRadius: BorderRadius.circular(27.0),
                            ),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
