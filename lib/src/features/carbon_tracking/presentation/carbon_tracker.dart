import 'package:flutter/material.dart';

class CarbonTracker extends StatefulWidget {
  const CarbonTracker({super.key});

  @override
  State<CarbonTracker> createState() => _ProfileState();
}

class _ProfileState extends State<CarbonTracker> {
  @override
  Widget build(BuildContext context) {
    return Center(child: const Text("carbon tracker"));
  }
}
