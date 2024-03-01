import 'package:flutter/material.dart';
import 'package:water_app/screens/input_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Tracker', // Название вашего приложения
      theme: ThemeData(
        primarySwatch: Colors.blue, // Основной цвет приложения
      ),
      home: InputScreen(), // Начальный экран вашего приложения
    );
  }
}
