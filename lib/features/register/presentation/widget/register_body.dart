import 'package:demo_project/core/constants/app_colors.dart';
import 'package:demo_project/core/util/extension.dart';
import 'package:demo_project/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/strings.dart';
import '../../../../core/widgets/app_text_field.dart';

class RegisterBody extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final GlobalKey formKey;
  final Function() onLoginPressed;
  final Function() onRegisterPressed;

  const RegisterBody({
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
          ),
          32.verticalSpace(),
          AppTextFormField(
            labelText: firstName,
            controller: usernameController,
            validator: validator,
          ),
          32.verticalSpace(),
          AppTextFormField(
            labelText: lastName,
            controller: passwordController,
            validator: validator,
          ),
          32.verticalSpace(),
          AppTextFormField(
            labelText: phoneNumber,
            controller: passwordController,
            validator: validator,
          ),
          32.verticalSpace(),
          AppTextFormField(
            labelText: email,
            controller: passwordController,
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
          AppTextFormField(
            labelText: confirmPassword,
            obscureText: true,
            controller: passwordController,
            validator: validator,
          ),
          32.verticalSpace(),
          AppButton(
            buttonText: register,
            onPressed: onLoginPressed,
          ),
          48.verticalSpace(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(alreadyHaveAnAccount).bodyMedium(),
              12.horizontalSpace(),
              InkWell(
                onTap: onRegisterPressed,
                child: const Text(login).bodyMedium(fontColor: textColorGrey),
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
