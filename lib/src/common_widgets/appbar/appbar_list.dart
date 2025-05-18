import 'package:eco_tracker/src/core/constants/colors.dart';
import 'package:flutter/material.dart';

final Map<String, AppBar> appbars = {
  'home': AppBar(
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
  'actions':AppBar(
    backgroundColor: backgound,
    leading: Icon(Icons.arrow_back_ios_rounded, color: Colors.white, size: 26),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(
          Icons.qr_code_scanner_rounded,
          color: Colors.white,
          size: 26,
        ),
      ),
    ],
  ),
  'tracker':AppBar(
    backgroundColor: backgound,
    leading: Icon(Icons.arrow_back_ios_rounded, color: Colors.white, size: 26),
  ),
  'profile':AppBar(
    backgroundColor: backgound,
    leading: Icon(Icons.arrow_back_ios_rounded, color: Colors.white, size: 26),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(
          Icons.settings_rounded,
          color: Colors.white,
          size: 26,
        ),
      ),
    ],
  ),
};
