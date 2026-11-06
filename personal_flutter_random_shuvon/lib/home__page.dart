import 'package:flutter/material.dart';
import 'package:shuvon_random/assignment2.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome in appbar"),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.blue,

        actions: [
          IconButton(
            tooltip: "Search",
            onPressed: (){},
             icon: Icon(Icons.search)
             ),
             IconButton(
              tooltip: "Settings",
              onPressed: (){},
               icon: Icon(Icons.settings)
             ),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Shuvon"),
               accountEmail: Text("Shuvon@gmail.com"),
               decoration: BoxDecoration(
                color: Colors.blue,

               ),
               
               ),

             ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap:(){},
              hoverColor: Colors.grey,
             )  ,
             ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              onTap:(){},
              hoverColor: Colors.grey,
             ),
          ],
        ),
      ),



      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.white,
                    fixedSize: Size(100, 50),
                    side: BorderSide(),
                    elevation: 100
                  ),
                   child: Text("Enter"),
                   ),
                   SizedBox(height: 100,width: 50,),

                   ElevatedButton(
                    onPressed: (){},
                     child: Text("Back"),
                     
                       
                     ),

              ],
            ),
            const assignment2(),
          ],
        ),
      ),
    );
  }
}