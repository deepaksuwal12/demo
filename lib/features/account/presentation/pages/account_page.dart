import 'package:flutter/material.dart';
import 'package:sanoads/core/util/extension.dart';
import 'package:sanoads/features/account/presentation/widget/settings_widget.dart';

import '../widget/basic_info_widget.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  bool editMode = false;
  var currentPasswordController = TextEditingController();
  var newPasswordController = TextEditingController();
  var confirmNewPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        BasicInfoWidget(editMode: editMode),
        40.verticalSpace(),
        const Divider(),
        SettingsWidget(
          currentPasswordController: currentPasswordController,
          newPasswordController: newPasswordController,
          confirmNewPasswordController: confirmNewPasswordController,
        ),
      ],
    );
  }
}
