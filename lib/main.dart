import 'package:flutter/material.dart';
import 'package:gp1/pages/login_page.dart';
import 'package:gp1/pages/login_view.dart';
import 'package:gp1/routes/route_manager.dart';

void main() {
  runApp(const ForcastingApp());
}

class ForcastingApp extends StatelessWidget {
  const ForcastingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteManager.onGenerateRoute,
      initialRoute: RouteManager.loginPage,
    );
  }
}
