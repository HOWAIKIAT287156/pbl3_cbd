import 'package:flutter/material.dart';
import 'package:pbl3_cbd/Page/Home.dart'; // Adjust the path as per your project structure

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Splash Screen',
      theme: ThemeData(
        // Define your app theme here
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(), // Set SplashScreen as the initial route
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate a splash screen
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the home page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Home()), // Navigate to Home.dart
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set your splash screen background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            CircularProgressIndicator(), // Add a loading icon
            SizedBox(height: 20), // Add some spacing
            Text('Loading...'), // Optional: Add a loading text
          ],
        ),
      ),
    );
  }
}
