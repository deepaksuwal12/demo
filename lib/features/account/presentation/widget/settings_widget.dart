import 'package:flutter/material.dart';
import 'package:sanoads/core/constants/strings.dart';
import 'package:sanoads/core/util/extension.dart';
import 'package:sanoads/core/widgets/app_button.dart';
import 'package:styled_widget/styled_widget.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../login/presentation/widget/login_body.dart';

class SettingsWidget extends StatelessWidget {
  final TextEditingController currentPasswordController;

  final TextEditingController newPasswordController;

  final TextEditingController confirmNewPasswordController;

  const SettingsWidget({
    Key? key,
    required this.currentPasswordController,
    required this.newPasswordController,
    required this.confirmNewPasswordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(settings).bodyLarge(),
          8.verticalSpace(),
          const Text(changePassword),
          16.verticalSpace(),
          AppTextFormField(
            labelText: currentPassword,
            obscureText: true,
            controller: currentPasswordController,
            validator: validator,
          ),
          16.verticalSpace(),
          AppTextFormField(
            labelText: newPassword,
            obscureText: true,
            controller: currentPasswordController,
            validator: validator,
          ),
          16.verticalSpace(),
          AppTextFormField(
            labelText: confirmNewPassword,
            obscureText: true,
            controller: currentPasswordController,
            validator: validator,
          ),
          16.verticalSpace(),
          AppButton(
            buttonText: changePassword,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
