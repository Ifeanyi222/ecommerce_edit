// Importing the necessary Flutter material package
import 'package:flutter/material.dart';
import '../screens/home_page.dart'; // Importing the home page file

void main() {
  // Entry point of the application, runApp function starts the app
  runApp(const MyApp());
}

// MyApp class which is the root of the application
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MaterialApp provides the structure for the app
    return MaterialApp(
      title: 'Shopeasy', // Title of the application
      theme: ThemeData(
        primarySwatch: Colors.blue, // Primary color theme
        scaffoldBackgroundColor: const Color(0xFFF5F5DC), // Background color
      ),
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: const HomePage(), // Set the home page
    );
  }
}
