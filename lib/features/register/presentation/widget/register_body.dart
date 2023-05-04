import 'package:demo_project/core/constants/app_colors.dart';
import 'package:demo_project/core/util/extension.dart';
import 'package:demo_project/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_widget/styled_widget.dart';
import '../../../../core/constants/strings.dart';
import '../../../../core/widgets/app_text_field.dart';

class RegisterBody extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController phoneNumberController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final GlobalKey formKey;
  final Function() onLoginPressed;
  final Function() onRegisterPressed;

  const RegisterBody({
    Key? key,
    required this.firstNameController,
    required this.lastNameController,
    required this.phoneNumberController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
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
            labelText: firstName,
            controller: firstNameController,
            validator: validator,
            keyboardType: TextInputType.name,
          ),
          32.verticalSpace(),
          AppTextFormField(
            labelText: lastName,
            controller: lastNameController,
            validator: validator,
            keyboardType: TextInputType.name,
          ),
          32.verticalSpace(),
          AppTextFormField(
            labelText: phoneNumber,
            controller: phoneNumberController,
            keyboardType: TextInputType.phone,
            validator: validator,
          ),
          32.verticalSpace(),
          AppTextFormField(
            labelText: email,
            controller: emailController,
            validator: validator,
            keyboardType: TextInputType.emailAddress,
          ),
          32.verticalSpace(),
          AppTextFormField(
            labelText: password,
            obscureText: true,
            controller: passwordController,
            validator: validator,
            keyboardType: TextInputType.visiblePassword,
          ),
          32.verticalSpace(),
          AppTextFormField(
            labelText: confirmPassword,
            obscureText: true,
            controller: confirmPasswordController,
            validator: validator,
            keyboardType: TextInputType.visiblePassword,
          ),
          32.verticalSpace(),
          AppButton(
            buttonText: register,
            onPressed: onRegisterPressed,
          ),
          48.verticalSpace(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(alreadyHaveAnAccount).bodyMedium(),
              12.horizontalSpace(),
              InkWell(
                onTap: onLoginPressed,
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
