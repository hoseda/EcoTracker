import 'package:eco_tracker/src/core/routing/routes.dart';
import 'package:eco_tracker/src/features/carbon_tracking/presentation/carbon_tracker.dart';
import 'package:eco_tracker/src/features/eco_actions/presentation/eco_actions.dart';
import 'package:eco_tracker/src/features/home/application/bottom_navbar_provider.dart';
import 'package:eco_tracker/src/features/home/presentation/home_page.dart';
import 'package:eco_tracker/src/features/profile/presentation/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();
  runApp(ProviderScope(child: const App()));
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final idx = ref.watch(bottomNavbarCurrentIndex);
    return MaterialApp.router(
      title: 'Home Page',
      theme: ThemeData(
        fontFamily: 'psans',
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
