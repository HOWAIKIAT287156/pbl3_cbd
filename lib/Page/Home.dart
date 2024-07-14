import 'package:flutter/material.dart';
import 'package:pbl3_cbd/Drawer/drawer.dart'; // Import your drawer.dart file

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Set your desired background color
      appBar: AppBar(
        title: const Text('Home Page'), // Set your app bar title
        // Add the hamburger icon to open the drawer
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Open drawer on button press
              },
            );
          },
        ),
      ),
      body: Center(
        child: const Text(
          'Welcome to Home Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      drawer: AppDrawer(), // Assign your drawer widget here
    );
  }
}
