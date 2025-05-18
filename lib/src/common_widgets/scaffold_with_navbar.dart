import 'package:eco_tracker/src/common_widgets/appbar/appbar_provider.dart';
import 'package:eco_tracker/src/core/constants/colors.dart';
import 'package:eco_tracker/src/features/home/presentation/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavbar extends ConsumerWidget {
  final Widget child;
  final GoRouterState state;
  const ScaffoldWithNavbar(this.child, this.state, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = GoRouter.of(context).state;
    final appbar = ref.watch(appBarProvider(s));
    return Scaffold(
      body: child,
      backgroundColor: backgound,
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: BottomNavbar(),
      appBar: appbar,
    );
  }
}
