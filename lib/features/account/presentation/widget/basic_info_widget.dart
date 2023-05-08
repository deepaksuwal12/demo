import 'package:flutter/material.dart';
import 'package:sanoads/core/constants/strings.dart';
import 'package:sanoads/core/util/extension.dart';
import 'package:sanoads/core/widgets/app_button.dart';
import 'package:styled_widget/styled_widget.dart';
import 'account_row_widget.dart';

class BasicInfoWidget extends StatelessWidget {
  final bool editMode;

  const BasicInfoWidget({Key? key, required this.editMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(basicInformation),
          8.verticalSpace(),
          AccountRowWidget(
            title: home,
            value: home,
            editMode: editMode,
          ),
          AccountRowWidget(
            title: address,
            value: address,
            editMode: editMode,
          ),
          AccountRowWidget(
            title: contactNumber,
            value: contactNumber,
            editMode: editMode,
          ),
          AccountRowWidget(
            title: emailAddress,
            value: emailAddress,
            editMode: editMode,
          ),
          AppButton(
            width: 72,
            height: 36,
            buttonText: edit,
            onPressed: () {},
          ).alignment(Alignment.centerRight)
        ],
      ),
    );
  }
}
