import 'package:flutter/material.dart';
import 'package:eco_tracker/src/core/constants/colors.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final dat = DateTime(2025, 2, 10);
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgound,
        appBar: AppBar(
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hello , Maria Zorah!",
                          style: TextStyle(
                            fontFamily: "psans",
                            fontSize: 19,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Good Morning",
                          style: TextStyle(
                            fontFamily: "psans",
                            color: iconbg,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 90,
                      height: 35,
                      decoration: BoxDecoration(
                        color: button,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.paid, color: primary),
                          const Text(
                            "2,012",
                            style: TextStyle(
                              fontFamily: "psans",
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
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
                                  fontFamily: "psans",
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Text(
                                "Win and get Voucher",
                                style: TextStyle(
                                  fontFamily: "psans",
                                  fontWeight: FontWeight.w500,
                                ),
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
                                    fontFamily: "psans",
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
                TableCalendar(
                  focusedDay: dat,
                  firstDay: dat,
                  lastDay: dat,
                  calendarFormat: CalendarFormat.week,
                  headerVisible: false,
                  weekendDays: [DateTime.saturday],
                  startingDayOfWeek: StartingDayOfWeek.saturday,
                  onDaySelected: (selectedDay, focusedDay) {

                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
