import 'package:flutter/material.dart';

// Создан для удобного хранения и использования стилей виджетов
// Дата создания: 05.02.2024
// Автор: Качмала Егор
class StylesManager {
  // --------------
  // Стили для кнопок
  // --------------
  static ButtonStyle onboardingBlueButton(double width, double height) {
    return TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.69),
      ),
      fixedSize: Size(width, height),
      backgroundColor: const Color(0xFF0560FA),
    );
  }

  static final ButtonStyle onboardingWhiteButton = TextButton.styleFrom(
    shape: RoundedRectangleBorder(
      side: const BorderSide(color: Color(0xFF0560FA), width: 1),
      borderRadius: BorderRadius.circular(4.69),
    ),
    fixedSize: const Size(100, 50),
    backgroundColor: const Color(0xFFFFFFFF),
  );


  // -------------
  // Стили для текста
  // -------------
  static const onboardongBlueTitle = TextStyle(
    color: Color(0xFF0560FA),
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 0,
    letterSpacing: 0,
  );

  static const onboardingBlackText = TextStyle(
    color: Color(0xFF3A3A3A),
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );

  static const onboardingBlueButtonText = TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 0,
    letterSpacing: 0,
  );

  static const onboardingWhiteButtonText = TextStyle(
    color: Color(0xFF0560FA),
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 0,
    letterSpacing: 0,
  );

  static const onboardingGreyHintText = TextStyle(
    color: Color(0xFFA7A7A7),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 0,
  );

  static const onboardingBlueHintText = TextStyle(
    color: Color(0xFF0560FA),
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 0,
  );
}
