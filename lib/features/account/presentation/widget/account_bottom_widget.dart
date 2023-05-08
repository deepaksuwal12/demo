import 'package:flutter/material.dart';
import 'package:sanoads/core/util/extension.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/strings.dart';

class AccountBottomWidget extends StatelessWidget {
  const AccountBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10),
      shrinkWrap: true,
      children: List.generate(
        menuList.length,
        (index) => Text(menuList[index]).headline6(),
      ),
    ).backgroundColor(bgColorGrey);
  }
}

final menuList = [
  faq,
  aboutUs,
  termsOfUse,
  privacyPolicy,
  customerSupport,
];
