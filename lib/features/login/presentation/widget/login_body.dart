import 'package:demo_project/core/util/extension.dart';
import 'package:demo_project/core/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import '../../../../core/widgets/app_text_field.dart';

class LoginBody extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final GlobalKey formKey;
  final Function() onLoginPressed;

  const LoginBody({
    Key? key,
    required this.usernameController,
    required this.passwordController,
    required this.formKey,
    required this.onLoginPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppTextFormField(
            labelText: 'Username',
            controller: usernameController,
            validator: validator,
          ),
          16.verticalSpace(),
          AppTextFormField(
              labelText: 'Password',
              obscureText: true,
              controller: passwordController,
              validator: validator),
          32.verticalSpace(),
          AppButton(
            buttonText: 'Login',
            onPressed: onLoginPressed,
          ),
        ],
      ),
    );
  }
}

String? validator(value) {
  if (value!.isEmpty) {
    return 'Required';
  }
  return null;
}
