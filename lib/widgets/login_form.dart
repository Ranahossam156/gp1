import 'package:flutter/material.dart';
import 'package:gp1/misc/validators.dart';
import 'package:gp1/pages/register_view.dart';
import 'package:gp1/routes/route_manager.dart';
import 'package:gp1/widgets/custom_divider.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                validator: validateEmail,
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Color(0xff076092),
                    fontSize: 18,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            const CustomDivider(),
            const SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                validator: validatePassword,
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Color(0xff076092),
                    fontSize: 18,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            const CustomDivider(),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(
                        context, RouteManager.registerPage);
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      decorationThickness: 2.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 30,
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff1FDEF5),
                  textStyle: const TextStyle(color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: const Text(
                  'Sign in',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              'Sign in with google account?',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?  ',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterView()),
                    );
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color: Color(0xff1FDEF5), fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
