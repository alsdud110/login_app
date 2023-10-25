import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text_form_field.dart';
import 'package:login_app/size.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const CustomTextFormField(title: "Email"),
          const SizedBox(
            height: mediumGap,
          ),
          const CustomTextFormField(title: "Password"),
          const SizedBox(
            height: largeGap,
          ),
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, "/home");
              }
            },
            child: const Text("Login"),
          ),
        ],
      ),
    );
  }
}
