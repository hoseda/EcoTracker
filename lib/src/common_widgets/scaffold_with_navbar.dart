import 'package:eco_tracker/src/core/constants/colors.dart';
import 'package:eco_tracker/src/features/home/presentation/bottom_navbar.dart';
import 'package:flutter/material.dart';

class ScaffoldWithNavbar extends StatelessWidget {
  final Widget child;
  const ScaffoldWithNavbar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      backgroundColor: backgound,
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: BottomNavbar(),
      appBar: AppBar(
        backgroundColor: backgound,
        leading: Icon(Icons.menu_rounded, color: Colors.white, size: 26),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.notifications_none_rounded,
              color: Colors.white,
              size: 26,
            ),
          ),
        ],
      ),
    );
  }
}
