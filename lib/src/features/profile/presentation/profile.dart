import 'package:eco_tracker/src/core/constants/colors.dart';
import 'package:eco_tracker/src/features/profile/presentation/profile_avatar.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          ProfileAvatar(),
          Padding(
            padding: const EdgeInsets.only(top: 13),
            child: const Text(
              'Maria Zorah',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            '"small action , big impact."',
            style: TextStyle(
              color: iconbg,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
