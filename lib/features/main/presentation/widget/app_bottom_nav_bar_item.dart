import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanoads/core/constants/app_colors.dart';

BottomNavigationBarItem appBottomNavBarItem(
  String icon,
  String title,
) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(
      icon,
      colorFilter: const ColorFilter.mode(textColorBlack, BlendMode.srcIn),
    ),
    activeIcon: SvgPicture.asset(
      icon,
      colorFilter: const ColorFilter.mode(textColorGrey, BlendMode.srcIn),
    ),
    label: title,
  );
}
