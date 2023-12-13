import 'package:flutter/material.dart';
import 'package:trelloappclone_flutter/core/strings_manager.dart';
import 'package:trelloappclone_flutter/features/home/presentation/views/home_page.dart';
import 'package:trelloappclone_flutter/features/landing/presentation/views/landing.dart';

class Routes {
  static const String landing = "/";
  static const String home = "/home";
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.landing:
        return MaterialPageRoute(
          builder: (context) => const LandingPage(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: SafeArea(
              child: Center(
                child: Text(StringsManager.noRoute),
              ),
            ),
          ),
        );
    }
  }
}
