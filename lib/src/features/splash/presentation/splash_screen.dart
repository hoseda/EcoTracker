import 'package:eco_tracker/src/features/home/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:eco_tracker/src/core/constants/colors.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: secondary),
        child: Center(
          child: SizedBox(
            width: 110,
            height: 110,
            child: Image.asset("assets/logo/logo1.png"),
          ),
        ),
      ),
    );
  }
}
