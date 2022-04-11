import 'package:flutter/material.dart';
import 'package:my_investment_portfolio/pages/home_page/home_page.dart';
import 'package:my_investment_portfolio/pages/login/login_page.dart';
import 'package:my_investment_portfolio/pages/splash/splash_page.dart';

class Routes {
  static Map<String, WidgetBuilder> getAppRoutes() {
    return {
      "/": (context) => SplashPage(),
      "/login": (context) => const LoginPage(),
      "/home": (context) => const HomePage(),
    };
  }
}

class NavigatorApp {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) {
    return navigatorKey.currentState!
        .pushNamed<T>(routeName, arguments: arguments);
  }

  static void pop<T extends Object?>([T? result]) {
    return navigatorKey.currentState!.pop(result);
  }
}
