import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 6), () async {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        ),
      );
    });
  }

  @override
  void initState() {
    startTimer();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
        height: double.infinity,
        width: double.infinity,
        image: AssetImage(
          'assets/pic.jpg',
        ),
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
