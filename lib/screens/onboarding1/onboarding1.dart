import 'package:flutter/material.dart';
import 'package:some_application/screens/onboarding2/onboarding2.dart';
import 'package:some_application/screens/onboarding3/onboarding3.dart';
import 'package:some_application/utils/styles_provider.dart';

// Класс виджета экрана onboarding1
// Дата создания: 05.02.2024
// Автор: Качмала Егор
class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

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
            const SizedBox(height: 66,),
            Image.asset(
              "assets/images/In no time-pana 1.png",
              height: 346,
              width: 346,
            ),
            const SizedBox(height: 48,),
            const Text("Quick Delivery At Your\nDoorstep", style: StylesManager.onboardongBlueTitle, textAlign: TextAlign.center, ),
            const SizedBox(height: 5,),
            const Text("Enjoy quick pick-up and delivery to\nyour destination", style: StylesManager.onboardingBlackText, textAlign: TextAlign.center,),
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
                      _createRoute(const Onboarding2Screen())
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
