import 'package:demo_project/core/widgets/base_view.dart';
import 'package:flutter/cupertino.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BaseView(
      title: 'Dashboard',
      body: Center(
        child: Text('Welcome'),
      ),
    );
  }
}
