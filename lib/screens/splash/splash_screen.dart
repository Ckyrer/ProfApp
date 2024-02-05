import 'package:flutter/material.dart';
import 'package:some_application/screens/onboarding1/onboarding1.dart';

// Класс виджета экрана splash
// Дата создания: 02.02.2024
// Автор: Качмала Егор
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void timer(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Onboarding1Screen()));
  }

  @override
  Widget build(BuildContext context) {
    timer(context);
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Image.asset(
          'assets/images/splash_blue.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}