import 'package:eco_tracker/src/core/constants/colors.dart';
import 'package:eco_tracker/src/features/challenges/presentations/challenges_page.dart';
import 'package:eco_tracker/src/features/eco_actions/presentation/habits_page.dart';
import 'package:flutter/material.dart';

class EcoActions extends StatefulWidget {
  const EcoActions({super.key});

  @override
  State<EcoActions> createState() => _ProfileState();
}

class _ProfileState extends State<EcoActions>
    with SingleTickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: button,
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  color: iconbg.withAlpha(130),
                  borderRadius: BorderRadius.circular(30),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: iconbg,
                labelStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                padding: EdgeInsets.all(3),
                tabs: [Tab(text: 'Habits'), Tab(text: 'Challenges')],
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                  Habits(),
                  Center(child: Text("challenges")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
