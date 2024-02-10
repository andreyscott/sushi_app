import 'package:flutter/material.dart';
import 'package:sushi_app/pages/intro_screen.dart';
import 'package:sushi_app/pages/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroScreen(),
      routes: {
        '/intropage': (context) => IntroScreen(),
        '/menupage': (context) => const MenuPage()
      },
    );
  }
}
