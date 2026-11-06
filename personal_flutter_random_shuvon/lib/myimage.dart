import 'package:flutter/material.dart';

class Myimage extends StatelessWidget {
  const Myimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/shuvon.jpeg",
      
      fit: BoxFit.cover,
    );
  }
}