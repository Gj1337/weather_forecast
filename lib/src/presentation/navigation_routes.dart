import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_forecast/src/presentation/main_screen/main_sceen.dart';
import 'package:weather_forecast/src/presentation/overview_screen/overview_sceen.dart';
import 'package:weather_forecast/src/presentation/settings_screen/setings_screen.dart';

final router = GoRouter(
  initialLocation: mainScreen.path,
  routes: [
    setingsScreen,
    mainScreen,
    overviewScreen,
  ],
  errorBuilder: (_, __) => const Center(
    child: Text('Path not found('),
  ),
);

final setingsScreen = GoRoute(
  path: '/settings',
  builder: (_, __) => const SetingsScreen(),
);

final mainScreen = GoRoute(
  path: '/main',
  builder: (_, __) => const MainScreen(),
);

final overviewScreen = GoRoute(
  path: '/overview',
  builder: (_, __) => const OverviewScreen(),
);
