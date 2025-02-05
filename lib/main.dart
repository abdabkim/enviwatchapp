import 'package:enviwatch/WelcomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Envi-Watch',
      debugShowCheckedModeBanner: false, // Removes the debug banner
      theme: ThemeData(
        // Define the default brightness and colors
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),

        // Define the default font family
        fontFamily: 'Roboto',

        // Define the default text theme
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 14.0),
        ),

        // Define the default button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue.shade300,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),

        // Define input decoration theme
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          filled: true,
          fillColor: Colors.grey.shade100,
        ),
      ),

      // Set WelcomePage as home instead of using routes
      home: const WelcomePage(),

      // Routes for other pages
      routes: {
        '/welcome': (context) => const WelcomePage(),
        // Add more routes here as you create more pages
        // '/home': (context) => const HomePage(),
        // '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
