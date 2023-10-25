import 'package:flutter/material.dart';
import 'package:login_app/components/custom_form.dart';
import 'package:login_app/components/logo.dart';
import 'package:login_app/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(
              height: xlargeGap,
            ),
            const Logo(title: "Login"),
            const SizedBox(
              height: largeGap,
            ),
            CustomForm(),
          ],
        ),
      ),
    );
  }
}
