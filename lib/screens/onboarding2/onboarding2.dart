import 'package:flutter/material.dart';
import 'package:some_application/screens/onboarding3/onboarding3.dart';
import 'package:some_application/utils/styles_provider.dart';

// Класс виджета экрана onboarding2
// Дата создания: 05.02.2024
// Автор: Качмала Егор
class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({super.key});

  Route _createRoute(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final CurveTween curveTween = CurveTween(curve: Curves.ease);
        animation.drive(curveTween);
        return child;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 88,),
            Image.asset(
              "assets/images/rafiki.png",
              height: 315.93,
              width: 424,
            ),
            const SizedBox(height: 59.07,),
            const Text("Flexible Payment", style: StylesManager.onboardongBlueTitle, textAlign: TextAlign.center, ),
            const SizedBox(height: 5,),
            const Text("Different modes of payment either\nbefore and after delivery without\nstress", style: StylesManager.onboardingBlackText, textAlign: TextAlign.center,),
            const SizedBox(height: 82),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      _createRoute(const Onboarding3Screen())
                    );
                  },
                  style: StylesManager.onboardingWhiteButton,
                  child: const Text("Skip", textAlign: TextAlign.left, style: StylesManager.onboardingWhiteButtonText,),
                ),
                const SizedBox(width: 142,),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      _createRoute(const Onboarding3Screen())
                    );
                  },
                  style: StylesManager.onboardingBlueButton(100, 50),
                  child: const Text("Next", textAlign: TextAlign.left, style: StylesManager.onboardingBlueButtonText,),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
