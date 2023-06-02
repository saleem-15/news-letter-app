import 'package:news_letter/core/resources/manager_strings.dart';
import 'package:flutter/material.dart';
import 'package:news_letter/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:news_letter/features/splash/presentation/view/splash_view.dart';

import '../config/dependency_injection.dart';
import '../features/explore/presentation/view/explore_view.dart';

class Routes {
  static const String splashView = '/splash_view';
  static const String outBoardingView = '/out_boarding_view';
  static const String exploreView = '/explore_view';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashView:
        initSplash();
        return MaterialPageRoute(builder: (_) => const SplashView());

      case Routes.outBoardingView:
        initOutBoarding();
        return MaterialPageRoute(builder: (_) => OnBoardingView());

      case Routes.exploreView:
        return MaterialPageRoute(builder: (_) => const ExploreView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(ManagerStrings.noRoutFound),
        ),
        body: const Center(
          child: Text(ManagerStrings.noRoutFound),
        ),
      ),
    );
  }
}
