import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

class assignment2 extends StatelessWidget {
  const assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 200,
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.all(40),

      alignment: Alignment.bottomLeft,

      decoration: BoxDecoration(
        border: Border.all(
          width: 5,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: RadialGradient(
          colors: [
            Colors.green,
            Colors.blue,
          ],
          ),
      ),
      child: Center(
        child: Text("Hello container,Shuvon"),
      ),
    );
  }
}
