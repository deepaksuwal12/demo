import 'package:sanoads/core/constants/app_colors.dart';
import 'package:sanoads/core/util/extension.dart';
import 'package:sanoads/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_widget/styled_widget.dart';
import '../../../../core/constants/strings.dart';
import '../../../../core/widgets/app_text_field.dart';

class LoginBody extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final GlobalKey formKey;
  final Function() onLoginPressed;
  final Function() onRegisterPressed;

  const LoginBody({
    Key? key,
    required this.usernameController,
    required this.passwordController,
    required this.formKey,
    required this.onLoginPressed,
    required this.onRegisterPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: ListView(
        children: [
          Text(
            sanoads,
            style: GoogleFonts.poppins(
              fontSize: 48,
              fontWeight: FontWeight.w400,
              color: textColorBlack,
            ),
          ).center(),
          32.verticalSpace(),
          AppTextFormField(
            labelText: '$userName / $email',
            controller: usernameController,
            validator: validator,
          ),
          32.verticalSpace(),
          AppTextFormField(
            labelText: password,
            obscureText: true,
            controller: passwordController,
            validator: validator,
          ),
          32.verticalSpace(),
          AppButton(
            buttonText: login,
            onPressed: onLoginPressed,
          ),
          48.verticalSpace(),
          const Text(forgotYourPassword).bodyMedium().center(),
          10.verticalSpace(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(dontHaveAnAccount).bodyMedium(),
              12.horizontalSpace(),
              InkWell(
                onTap: onRegisterPressed,
                child:
                    const Text(register).bodyMedium(fontColor: textColorGrey),
              ),
            ],
          )
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
