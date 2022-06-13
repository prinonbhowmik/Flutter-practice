import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash/Views/HomeScreen.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: const HomePage(),
      splash: Lottie.asset('assets/json/loading.json'),
      backgroundColor: Colors.redAccent,
      splashIconSize: 250,
      duration: 3000,
      animationDuration: const Duration(seconds: 2),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
