import 'package:flutter/material.dart';

import 'assignment2.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 41, 131, 221),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        //leading: Icon(Icons.home),
        actions: [
          IconButton(
            tooltip: "Person",
            onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(
            tooltip: "Search",
            onPressed: () {}, icon: Icon(Icons.search)),

          IconButton(
            tooltip: "Settings",
            onPressed: (){}, icon: Icon(Icons.settings)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Shuvon"),
              accountEmail: Text("Shuvon@gmail.com"),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 30, 118, 233),
              ),
            ),
            ListTile(
              title: Text("Homepage"),
              leading: Icon(Icons.home),
              hoverColor: Colors.grey,
              onTap: () {},
            ),
            ListTile(title: Text("Person"), leading: Icon(Icons.person),
            hoverColor:Colors.grey,
            onTap:(){},
            
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                  fixedSize: Size(150, 20),
                  side: BorderSide(),
                  elevation: 100,
                ),
                child: Text("Text Button"),
              ),
              SizedBox(width: 50),
              ElevatedButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  fixedSize: Size(150, 20),
                  side: BorderSide(),
                  elevation: 100,
                ),
                child: Text("ElevatedButton"),
              ),
              OutlinedButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  fixedSize: Size(150, 20),
                  side: BorderSide(),
                  elevation: 100,
                ),
                child: Text("OutlineButton"),
              ),
              IconButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 87, 20, 131),
                  foregroundColor: Colors.white,
                  fixedSize: Size(130, 20),
                  side: BorderSide(),
                  elevation: 50,
                ),
              
                icon: Icon(Icons.login),
              ),
            ],
          ),
          const assignment2(),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        backgroundColor: const Color.fromARGB(255, 64, 161, 251),
        foregroundColor: Colors.white,
        shape: BeveledRectangleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }
}