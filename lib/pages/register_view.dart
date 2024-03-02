import 'package:flutter/material.dart';
import 'package:gp1/widgets/register_form.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Image.asset(
                    'assets/images/Untitled-1-01.png',
                    height: 180,
                    width: 180,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: RegisterForm(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
