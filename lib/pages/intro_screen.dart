import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/Button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 138, 60, 55),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Text(
                'Sushi Mania',
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(45.0),
                child: Image.asset(
                  'lib/images/sushi.png',
                ),
              ),

              const SizedBox(height: 25),

              // HEADLINE
              Text(
                "THE TASTE OF JAPANESE FOOD",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 44,
                  color: const Color.fromARGB(255, 235, 225, 225),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Feel the taste of the most popular japanese food anywhere in the world',
                style: TextStyle(
                    color: Colors.white70,
                    height: 2,
                    fontWeight: FontWeight.w300),
              ),

              const SizedBox(
                height: 20,
              ),

              // get started button
              MyButton(
                text: "Get Started",
                onTap: () {
                  // go to the main
                  Navigator.pushNamed(context, '/menupage');
                },
              )
            ],
          ),
        )));
  }
}
