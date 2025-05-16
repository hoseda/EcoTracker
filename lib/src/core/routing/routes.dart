import 'package:eco_tracker/src/features/carbon_tracking/presentation/carbon_tracker.dart';
import 'package:eco_tracker/src/features/eco_actions/presentation/eco_actions.dart';
import 'package:eco_tracker/src/features/home/presentation/bottom_navbar.dart';
import 'package:eco_tracker/src/features/home/presentation/home_page.dart';
import 'package:eco_tracker/src/features/profile/presentation/profile.dart';
import 'package:go_router/go_router.dart';

enum AppRoute { home, actions, tracker, profile }

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/actions',
      name: AppRoute.actions.name,
      builder: (context, state) => EcoActions(),
    ),
    GoRoute(
      path: '/tracker',
      name: AppRoute.tracker.name,
      builder: (context, state) => CarbonTracker(),
    ),
    GoRoute(
      path: '/profile',
      name: AppRoute.profile.name,
      builder: (context, state) => Profile(),
    ),
  ],
);
