
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';


int currrentIndex = 0;

final bottomNavbarCurrentIndex = StateProvider<int>((ref) {
  return currrentIndex;
});
