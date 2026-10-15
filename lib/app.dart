import 'package:flutter/material.dart';

import 'screen/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const navy = Color(0xFF123B63);
    const blue = Color(0xFF2684C7);

    return MaterialApp(
      title: 'Galon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: blue,
          primary: navy,
          secondary: blue,
          surface: const Color(0xFFF6F9FC),
        ),
        scaffoldBackgroundColor: const Color(0xFFF6F9FC),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 18,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0xFFE2EAF1)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0xFFE2EAF1)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: blue, width: 1.5),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
