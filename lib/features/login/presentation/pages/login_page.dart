import 'package:auto_route/auto_route.dart';
import 'package:sanoads/features/login/presentation/widget/login_body.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import '../../../../core/routes/app_router.gr.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var formKey = GlobalKey<FormState>();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LoginBody(
          usernameController: usernameController,
          passwordController: passwordController,
          formKey: formKey,
          onLoginPressed: () {
            if (formKey.currentState!.validate()) {
              context.router.push(const MainPageRoute());
            }
          },
          onRegisterPressed: () {
            context.router.push(const RegisterPageRoute());
          },
        ).padding(all: 20),
      ),
    );
  }
}
