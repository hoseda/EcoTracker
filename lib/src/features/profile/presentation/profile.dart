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
    final bottomInset = MediaQuery.of(context).viewPadding.bottom;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
          const SizedBox(height: 35),
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
            height: 110,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 115,
                mainAxisSpacing: 7,
                mainAxisExtent: 115,
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
                        SvgPicture.asset(
                          image!,
                          colorFilter: ColorFilter.mode(
                            primary,
                            BlendMode.srcIn,
                          ),
                          width: 28,
                          height: 28,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              point,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              text,
                              style: TextStyle(
                                color: iconbg,
                                fontSize: 11,
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

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Today's quote",
                      style: TextStyle(color: iconbg, fontSize: 13),
                    ),
                    Text(
                      "'Living sustainably isn't just about saving the planet - it's about creating a future where both nature and humanity thrive togather.'",
                      softWrap: true,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: button,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              const Text(
                "Details",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          ...List.generate(2, (index) {
            final cont = profileSettings;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 75,
                  decoration: BoxDecoration(
                    color: button,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        margin: const EdgeInsets.only(left: 15),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: backgound.withAlpha(150),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(2),
                          child: SvgPicture.asset(
                            cont[index]['icon'] as String,
                            fit: BoxFit.scaleDown,
                            colorFilter: ColorFilter.mode(
                              primary,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            cont[index]['title'] as String,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            cont[index]['desc'] as String,
                            style: TextStyle(
                              color: iconbg,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 21,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
          SizedBox(height: bottomInset + 80),
        ],
      ),
    );
  }
}
