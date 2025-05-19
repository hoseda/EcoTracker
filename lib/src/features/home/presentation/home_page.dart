import 'package:eco_tracker/src/core/constants/home_page_constant.dart';
import 'package:flutter/material.dart';
import 'package:eco_tracker/src/core/constants/colors.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: PageScrollPhysics(parent: ClampingScrollPhysics()),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        // todo : user name
                        "Hello , Maria Zorah!",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        // todo : greeting base on time
                        "Good Morning",
                        style: TextStyle(
                          color: iconbg,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: button,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/coins.svg',
                            width: 27,
                            height: 27,
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              primary,
                              BlendMode.srcIn,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            // todo : user points
                            "2,012",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Container(
                  width: double.infinity,
                  height: 155,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Weekly Challenges !!!",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Text(
                              "Win and get Voucher",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 95,
                            height: 33,
                            decoration: BoxDecoration(
                              color: button,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "Start now",
                                style: TextStyle(
                                  color: primary,

                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // todo : add horizontal scrollable calendar here.
              // ----------
              // const SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisExtent: 133,
                  ),
                  itemBuilder: (context, index) {
                    final shadow = homePageConstant;
                    final icon = shadow[index]["icon"];
                    final text = shadow[index]["text"] as String;
                    final subtext = shadow[index]["subtext"] as String;

                    return Container(
                      decoration: BoxDecoration(
                        color: button,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(icon as IconData, color: primary, size: 27),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  text,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  subtext,
                                  style: TextStyle(
                                    color: iconbg,
                                    fontSize: 13,
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
              const Text(
                "Step into a Green Future",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: SizedBox(
                  height: 170,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      final shadow = homePageGreenFuture;
                      final text = shadow[index]["text"] as String;
                      final desc = shadow[index]["desc"] as String;
                      final image = shadow[index]["image"] as String;
                      final help = shadow[index]["help"] as String;
                      final point = shadow[index]["point"].toString();

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(
                            color: button,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 15,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      text,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),

                                    Tooltip(
                                      message: help,
                                      textStyle: TextStyle(color: Colors.white),
                                      child: Icon(
                                        Icons.help_outline_rounded,
                                        size: 20,
                                        color: iconbg,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(image, scale: 7),
                                    Expanded(
                                      child: Text(
                                        desc,
                                        softWrap: true,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: iconbg,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: primary,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/coins.svg',
                                              width: 25,
                                              height: 25,
                                              fit: BoxFit.cover,
                                              colorFilter: ColorFilter.mode(
                                                secondary,
                                                BlendMode.srcIn,
                                              ),
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              // todo : user points
                                              "+$point",
                                              style: TextStyle(
                                                color: secondary,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              // todo : add popular article in future plans.
            ],
          ),
        ),
      ),
    );
  }
}
