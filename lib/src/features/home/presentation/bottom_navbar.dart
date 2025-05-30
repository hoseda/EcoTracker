import 'package:eco_tracker/src/core/constants/colors.dart';
import 'package:eco_tracker/src/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  var isSelected = [true, false, false, false];
  Widget generateBottomNavbarItem(String icon, int indx) {
    final color = isSelected[indx] ? primary : Colors.transparent;
    return Material(
      color: Colors.transparent,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child: IconButton(
      splashColor: primary.withAlpha(130),
          onPressed: (){
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
          icon: SvgPicture.asset(
            icon,
            width: 27,
            height: 27,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
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
            generateBottomNavbarItem('assets/icons/home.svg', 0),
            generateBottomNavbarItem('assets/icons/group.svg', 1),
            generateBottomNavbarItem('assets/icons/footprint.svg', 2),
            generateBottomNavbarItem('assets/icons/user.svg', 3),
          ],
        ),
      ),
    );
  }
}
