import 'package:flutter/material.dart';

import 'home_page.dart';

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
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
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
              hoverColor: const Color.fromARGB(255, 0, 6, 10),
              onTap: () {},
            ),
            ListTile(title: Text("Person"), leading: Icon(Icons.person)),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 114, 20, 131),
                foregroundColor: Colors.white,
                fixedSize: Size(150, 20),
                side: BorderSide(),
                elevation: 100,
              ),
              child: Text("Text Button"),
            ),
          ),
          SizedBox(width: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 41, 2, 48),
                foregroundColor: Colors.white,
                fixedSize: Size(150, 20),
                side: BorderSide(),
                elevation: 100,
              ),
              child: Text("ElevatedButton"),
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 131, 74, 20),
              foregroundColor: Colors.white,
              fixedSize: Size(150, 20),
              side: BorderSide(),
              elevation: 100,
            ),
            child: Text("OutlineButton"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
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
          ),
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