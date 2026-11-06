import 'package:flutter/material.dart';
import 'home__page.dart';
import 'assignment2.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homepage()
    );
  }
}



