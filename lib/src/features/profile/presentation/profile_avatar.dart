import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileAvatar extends StatefulWidget {
  const ProfileAvatar({super.key});

  @override
  State<ProfileAvatar> createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 95,
          height: 95,
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
          child: CircleAvatar(
            backgroundImage: ExactAssetImage('assets/images/profile.jpg'),
          ),
        ),
        Positioned(
          right: 2,
          bottom: 4,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: SvgPicture.asset(
                  'assets/icons/pencil.svg',
                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
