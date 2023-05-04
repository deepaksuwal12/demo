import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;

  const AppTextFormField({
    Key? key,
    required this.labelText,
    this.obscureText = false,
    required this.controller,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          labelText: labelText,
        ),
      ),
    );
  }
}
