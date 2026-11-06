
import 'package:flutter/material.dart';
import 'package:shuvon_random/myimage.dart';

class assignment2 extends StatelessWidget {
  const assignment2({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(

    height: 500,
    width: 500,
    alignment: Alignment.topCenter,
    padding: EdgeInsets.all(20),
    child: Column(
      children: [
        Text("My profile",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        ),
        Icon(
          Icons.person,
          size: 50,
          color: Colors.white,
        ),

        Myimage(),

        
      ],
    ),

    decoration: BoxDecoration(
      color: Colors.purple,
      borderRadius: BorderRadius.circular(20),
    ),

    

    

   );
  }
}
