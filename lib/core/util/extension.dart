import 'package:flutter/cupertino.dart';

extension Space on int {
  Widget verticalSpace() {
    return SizedBox(
      height: toDouble(),
    );
  }

  Widget horizontalSpace() {
    return SizedBox(
      width: toDouble(),
    );
  }
}
