import 'package:flutter/material.dart';
import 'package:some_application/utils/styles_provider.dart';

// Класс виджета экрана onboarding3
// Дата создания: 05.02.2024
// Автор: Качмала Егор
class Onboarding3Screen extends StatelessWidget {
  const Onboarding3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/rafiki.png",
              height: 346,
              width: 346,
            ),
            const SizedBox(height: 48,),
            const Text("Real-time Tracking", style: StylesManager.onboardongBlueTitle, textAlign: TextAlign.center, ),
            const SizedBox(height: 5,),
            const Text("Track your packages/items from the\ncomfort of your home till final destination", style: StylesManager.onboardingBlackText, textAlign: TextAlign.center,),
            const SizedBox(height: 91),
            TextButton(
              onPressed: () {},
              style: StylesManager.onboardingBlueButton(342, 46),
              child: const Text(style: StylesManager.onboardingBlueButtonText, "Sign Up"),
            ),
            const SizedBox(height: 20,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? ", style: StylesManager.onboardingGreyHintText,),
                Text("Sign in", style: StylesManager.onboardingBlueHintText,)
              ],
            ),
          ],
        ),
      )
    );
  }
}
