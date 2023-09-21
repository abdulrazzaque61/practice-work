import 'package:flutter/material.dart';
import 'package:flutter_application_1/Calculator_Screen.dart';
import 'package:flutter_application_1/MyLogIN.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CalculatorScreen());
  }
}
