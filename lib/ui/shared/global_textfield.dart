import 'package:flutter/material.dart';

class GlobalTextField extends StatelessWidget {
  GlobalTextField(
      {this.label,
      this.textIcon,
      this.obscureText = false,
      this.onChanged,
      this.keyboardType});
  final String label;
  final IconData textIcon;
  final bool obscureText;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            obscureText: obscureText,
            onChanged: onChanged,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              labelText: label,
              prefixIcon: Icon(textIcon),
            ),
          ),
        ),
      ],
    );
  }
}
