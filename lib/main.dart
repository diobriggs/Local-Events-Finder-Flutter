import 'package:flutter/material.dart';
import 'HomeScreen.dart'; // Import the HomeScreen

void main() {
  runApp(LocalEventsApp());
}

class LocalEventsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner
      title: 'Local Events Finder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Set HomeScreen as the starting point of the app
    );
  }
}
