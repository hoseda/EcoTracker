import 'package:eco_tracker/src/core/constants/colors.dart';
import 'package:eco_tracker/src/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  var isSelected = [true, false, false, false];
  Widget generateBottomNavbarItem(IconData icon, int indx) {
    final color = isSelected[indx] ? primary : Colors.transparent;
    return Material(
          color: Colors.transparent,
          animationDuration: const Duration(milliseconds: 120),
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            splashColor: primary.withAlpha(130),
            onTap: () {
              if (!isSelected[indx]) {
                Future.delayed(const Duration(milliseconds: 121)).then((e) {
                  setState(() {
                    isSelected = List.filled(
                      isSelected.length,
                      false,
                      growable: false,
                    );
                    isSelected[indx] = true;
                  });
                });
                context.goNamed(AppRoute.values[indx].name);
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
