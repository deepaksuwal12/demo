import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:styled_widget/styled_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return const Text('Dashboard').center();
  }
}
