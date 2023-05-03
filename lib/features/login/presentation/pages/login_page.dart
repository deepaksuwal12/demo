import 'package:demo_project/core/widgets/base_view.dart';
import 'package:demo_project/features/login/presentation/widget/login_body.dart';
import 'package:flutter/cupertino.dart';

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
    return BaseView(
      title: 'Login',
      body: LoginBody(
        usernameController: usernameController,
        passwordController: passwordController,
        formKey: formKey,
        onLoginPressed: () {
          if (formKey.currentState!.validate()) {

          }
        },
      ),
    );
  }
}
