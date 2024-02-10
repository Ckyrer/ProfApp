import 'package:flutter/material.dart';
import 'package:some_application/database_manager.dart';
import 'package:some_application/screens/queue/queue_screen_view.dart';

void main() {
  DatabaseManager.init();
  runApp(const MyApp());
}

// Класс главного виджета приложения
// Дата создания: 05.02.2024
// Автор: Качмала Егор
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const QueueScreen(),
    );
  }
}
