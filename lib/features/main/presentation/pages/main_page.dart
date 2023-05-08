import 'package:flutter/material.dart';
import 'package:sanoads/core/constants/app_colors.dart';
import 'package:sanoads/core/constants/strings.dart';
import 'package:sanoads/core/widgets/base_view.dart';
import 'package:sanoads/features/account/presentation/pages/account_page.dart';
import 'package:sanoads/features/category/presentation/pages/category_page.dart';
import 'package:sanoads/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:sanoads/features/home/presentation/pages/home_page.dart';

import '../widget/app_bottom_nav_bar_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BaseView(
        title: 'Dashboard',
        padding: 0,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 20,
          selectedItemColor: textColorGrey,
          unselectedItemColor: textColorBlack,
          backgroundColor: bgColor,
          currentIndex: selectedIndex,
          items: List.generate(
            title.length,
            (index) => appBottomNavBarItem(
              icons[index],
              title[index],
            ),
          ),
          onTap: (int index) {
            setState(
              () {
                selectedIndex = index;
              },
            );
          },
        ),
        body: widgetList[selectedIndex]);
  }
}

var title = [home, dashboard, categories, account];
var icons = [
  'assets/images/home.svg',
  'assets/images/dashboard.svg',
  'assets/images/categories.svg',
  'assets/images/account.svg',
];
final widgetList = [
  const HomePage(),
  const DashboardPage(),
  const CategoryPage(),
  const AccountPage(),
];
