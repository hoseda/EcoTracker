import 'package:eco_tracker/src/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

final Map<String, AppBar> appbars = {
  'home': AppBar(
    key: ValueKey('home'),
    backgroundColor: backgound,
    leading: IconButton(
      onPressed: () {},
      splashColor: primary,
      splashRadius: 10,
      icon: SvgPicture.asset(
        'assets/icons/menu.svg',
        width: 22,
        height: 22,
        colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: IconButton(
          onPressed: () {},
          splashColor: primary,
          splashRadius: 10,
          icon: SvgPicture.asset(
            'assets/icons/bell.svg',
            width: 26,
            height: 26,
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ),
    ],
  ),
  'actions': AppBar(
    key: ValueKey('actions'),
    backgroundColor: backgound,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 14.0),
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/scan.svg',
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ),
    ],
  ),
  'tracker': AppBar(
    key: ValueKey('tracker'),

    backgroundColor: backgound,
  ),
  'profile': AppBar(
    key: ValueKey('profile'),
    backgroundColor: backgound,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/settings.svg',
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ),
    ],
  ),
};
