import 'package:sanoads/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextFormField extends StatefulWidget {
  final String labelText;
  final bool obscureText;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry contentPadding;

  const AppTextFormField({
    Key? key,
    required this.labelText,
    this.obscureText = false,
    required this.controller,
    required this.validator,
    this.keyboardType,
    this.contentPadding = const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 12,
    ),
  }) : super(key: key);

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  late bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        obscureText: _passwordVisible,
        controller: widget.controller,
        validator: widget.validator,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          labelText: widget.labelText,
          isDense: true,
          contentPadding: widget.contentPadding,
          suffixIcon: Visibility(
            visible: widget.obscureText,
            child: IconButton(
              icon: Icon(
                _passwordVisible ? Icons.visibility : Icons.visibility_off,
                color: textColorGrey,
              ),
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
