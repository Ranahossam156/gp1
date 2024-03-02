import 'package:flutter/material.dart';
import 'package:gp1/pages/login_page.dart';
import 'package:gp1/pages/login_view.dart';
import 'package:gp1/pages/register_view.dart';
import 'package:gp1/pages/splash_view.dart';

class RouteManager {
  static const String loadingPage = '/';
  static const String loginPage = '/loginPage';
  static const String registerPage = '/registerPage';
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loadingPage:
        return MaterialPageRoute(builder: (context) => const SplashView());
      case loginPage:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case registerPage:
        return MaterialPageRoute(builder: (context) => const RegisterView());
      default:
        throw Exception("No route found!");
    }
  }
}
