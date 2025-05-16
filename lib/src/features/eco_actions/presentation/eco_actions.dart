import 'package:flutter/material.dart';


class EcoActions extends StatefulWidget {
  const EcoActions({super.key});

  @override
  State<EcoActions> createState() => _ProfileState();
}

class _ProfileState extends State<EcoActions> {
  @override
  Widget build(BuildContext context) {
    return Center(child: const Text("Actions"));
  }
}
