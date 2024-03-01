import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Loading  Page",
              style: TextStyle(fontSize: 40.0,
               fontWeight: FontWeight.w300,
               
               ),
            ),
          ],
        ),
      ),
    );
  }
}
