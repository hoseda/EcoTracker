import 'package:eco_tracker/src/common_widgets/appbar/appbar_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final appBarProvider = Provider.family<AppBar, GoRouterState>((
  ref,
  state,
) {
  switch (state.path) {
    case "/":
      return appbars['home']!;

    case "/actions":
      return appbars['actions']!;

    case "/tracker":
      return appbars['tracker']!;

    case "/profile":
      return appbars['profile']!;

    default:
      return appbars['home']!;
  }
});
