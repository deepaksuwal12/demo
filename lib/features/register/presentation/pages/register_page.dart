import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../../core/routes/app_router.gr.dart';
import '../widget/register_body.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var formKey = GlobalKey<FormState>();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RegisterBody(
          firstNameController: firstNameController,
          lastNameController: lastNameController,
          phoneNumberController: phoneNumberController,
          emailController: emailController,
          passwordController: passwordController,
          confirmPasswordController: confirmPasswordController,
          formKey: formKey,
          onLoginPressed: () {
            context.router.replace(const LoginPageRoute());
          },
          onRegisterPressed: () {
            if (formKey.currentState!.validate()) {}
          },
        ).padding(all: 20),
      ),
    );
  }
}
