import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:rock_paper_scissors_game/game_screen.dart';
import 'package:rock_paper_scissors_game/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 3000,
            splashIconSize: double.infinity,
            splash: const SplashScreen(),
            nextScreen: const GameScreen(),
            splashTransition: SplashTransition.fadeTransition));
  }
}
