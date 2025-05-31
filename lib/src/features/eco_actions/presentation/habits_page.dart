import 'package:flutter/material.dart';

class Habits extends StatefulWidget {
  const Habits({super.key});

  @override
  State<Habits> createState() => _HabitsState();
}

class _HabitsState extends State<Habits> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       ...List.generate(130, (index){
        return Text("habits");
       }),
      ],
    );
  }
}
