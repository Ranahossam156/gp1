import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Untitled-1-01.png',
                width: 180.0,
                height: 180.0,
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.13),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Color(0xff076092)),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Divider(
                height: MediaQuery.of(context).size.width * 0.005,
                color: Color(0xff076092),
                thickness: 2,
                indent: MediaQuery.of(context).size.width * 0.13,
                endIndent: MediaQuery.of(context).size.width * 0.13,
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.13,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Color(0xff076092)),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Divider(
                height: MediaQuery.of(context).size.width * 0.005,
                color: Color(0xff076092),
                thickness: 2,
                indent: MediaQuery.of(context).size.width * 0.13,
                endIndent: MediaQuery.of(context).size.width * 0.13,
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Add your sign-in logic here
                  },
                  child: const Text('Sign In'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    padding: EdgeInsets.all(16),
                    backgroundColor: Color(0xff1FDEF5),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
