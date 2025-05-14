import 'package:eco_tracker/src/core/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 14, 13, 13),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}


