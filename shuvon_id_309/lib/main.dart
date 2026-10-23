import 'package:flutter/material.dart';
import 'package:shuvon_id_309/CalculatorPage.dart';
import 'home_page.dart';
import 'myimage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}