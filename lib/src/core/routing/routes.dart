import 'package:eco_tracker/src/common_widgets/scaffold_with_navbar.dart';
import 'package:eco_tracker/src/features/carbon_tracking/presentation/carbon_tracker.dart';
import 'package:eco_tracker/src/features/eco_actions/presentation/eco_actions.dart';
import 'package:eco_tracker/src/features/home/presentation/home_page.dart';
import 'package:eco_tracker/src/features/profile/presentation/profile.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

enum AppRoute { home, actions, tracker, profile }

final router = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return ScaffoldWithNavbar(child, state);
      },
      routes: [
        GoRoute(
          path: '/',
          name: AppRoute.home.name,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: HomePage(),
              transitionsBuilder: (
                context,
                animation,
                secondaryAnimation,
                child,
              ) {
                final cA = CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeInBack,
                );
                return FadeTransition(opacity: cA, child: child);
              },
            );
          },
        ),
        GoRoute(
          path: '/actions',
          name: AppRoute.actions.name,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: EcoActions(),
              transitionsBuilder: (
                context,
                animation,
                secondaryAnimation,
                child,
              ) {
                final cA = CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeInBack,
                );
                return FadeTransition(opacity: cA, child: child);
              },
            );
          },
        ),
        GoRoute(
          path: '/tracker',
          name: AppRoute.tracker.name,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: CarbonTracker(),
              transitionsBuilder: (
                context,
                animation,
                secondaryAnimation,
                child,
              ) {
                final cA = CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeInBack,
                );
                return FadeTransition(opacity: cA, child: child);
              },
            );
          },
        ),
        GoRoute(
          path: '/profile',
          name: AppRoute.profile.name,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: Profile(),
              transitionsBuilder: (
                context,
                animation,
                secondaryAnimation,
                child,
              ) {
                final cA = CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeInBack,
                );
                return FadeTransition(opacity: cA, child: child);
              },
            );
          },
        ),
      ],
    ),
  ],
);
