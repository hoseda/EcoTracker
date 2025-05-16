import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EcoActions extends StatefulWidget {
  const EcoActions({super.key});

  @override
  State<EcoActions> createState() => _ProfileState();
}

class _ProfileState extends State<EcoActions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: const Text("Actions")),
    );
  }
}
