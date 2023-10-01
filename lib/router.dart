import 'package:amazon/common/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

import 'features/auth/screens/auth_screen.dart';
import 'features/home/screens/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const AuthScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      );
    case BottomNavBar.routeName:
      return MaterialPageRoute(
        builder: (_) => const BottomNavBar(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('The Screen doesn\'t exist'),
          ),
        ),
      );
  }
}
