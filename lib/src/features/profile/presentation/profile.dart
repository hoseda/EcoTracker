import 'package:eco_tracker/src/core/constants/colors.dart';
import 'package:eco_tracker/src/core/constants/profile_page_constant.dart';
import 'package:eco_tracker/src/features/profile/presentation/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
            style: TextStyle(color: iconbg, fontSize: 13),
          ),
          const SizedBox(height: 45),
          Row(
            children: [
              Text(
                'Rewards and Vouchers',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          SizedBox(
                height: 115,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 115,
                    mainAxisSpacing: 7,
                  ),
                  itemBuilder: (context, index) {
                    final shadow = profileCardConstants;
                    final image = shadow[index]["image"];
                    final text = shadow[index]["text"] as String;
                    final point = shadow[index]["point"] as String;

                    return Container(
                      decoration: BoxDecoration(
                        color: button,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(image! , colorFilter: ColorFilter.mode(primary, BlendMode.srcIn),width: 28,height: 28,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  point,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  text,
                                  style: TextStyle(
                                    color: iconbg,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
        ],
      ),
    );
  }
}
