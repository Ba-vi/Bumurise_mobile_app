import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Savings & Investment App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Start with the Splash Screen
      home: SplashScreen(),

      // Optional: Define routes for easy navigation
      routes: {
        '/login': (context) => LoginScreen(),
        '/splash': (context) =>  SplashScreen(),
      },
    );
  }
}
