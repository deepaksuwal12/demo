import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class BaseView extends StatelessWidget {
  final String? title;
  final Widget body;
  final BottomNavigationBar? bottomNavigationBar;
  final FloatingActionButton? floatingActionButton;
  final double padding;

  const BaseView({
    Key? key,
    this.title,
    required this.body,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.padding = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? ''),
      ),
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      body: body.padding(all: padding),
    );
  }
}
