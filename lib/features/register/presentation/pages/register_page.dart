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
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: RegisterBody(
          usernameController: usernameController,
          passwordController: passwordController,
          formKey: formKey,
          onLoginPressed: () {
            if (formKey.currentState!.validate()) {
              context.router.push(const DashboardPageRoute());
            }
          },
          onRegisterPressed: (){
            context.router.push(const RegisterPageRoute());
          },
        ).padding(all: 20),
      ),
    );
  }
}
