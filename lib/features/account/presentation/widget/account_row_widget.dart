import 'package:flutter/cupertino.dart';
import 'package:sanoads/core/widgets/app_text_field.dart';
import 'package:styled_widget/styled_widget.dart';

class AccountRowWidget extends StatelessWidget {
  final String title;
  final String value;
  final bool editMode;

  const AccountRowWidget({
    Key? key,
    required this.title,
    required this.value,
    this.editMode = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title).expanded(flex: 2),
        Wrap(
          children: [
            Visibility(
              visible: !editMode,
              child: Text(value),
            ),
            Visibility(
              visible: editMode,
              child: AppTextFormField(
                labelText: value,
                controller: TextEditingController(),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                validator: (String? value) {},
              ),
            ),
          ],
        ).expanded(flex: 3)
      ],
    ).padding(bottom: 16);
  }
}
