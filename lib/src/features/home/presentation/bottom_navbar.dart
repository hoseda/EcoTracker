import 'package:eco_tracker/src/core/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  var isSelected = [true, false, false, false];

  Widget generateBottomNavbarItem(IconData icon, int indx) {
    final color = isSelected[indx] ? primary : iconbg;
    return GestureDetector(
      onTap: () {
        if (!isSelected[indx]) {
          setState(() {
            isSelected = List.filled(isSelected.length, false, growable: false);
            isSelected[indx] = true;
          });
        }
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child: Icon(icon, color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: button,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            generateBottomNavbarItem(Icons.home_rounded, 0),
            generateBottomNavbarItem(Icons.groups_2_rounded, 1),
            generateBottomNavbarItem(Icons.calculate_rounded, 2),
            generateBottomNavbarItem(Icons.person, 3),
          ],
        ),
      ),
    );
  }
}
