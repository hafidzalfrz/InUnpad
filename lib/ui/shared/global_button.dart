import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  GlobalButton(
      {this.widthSize,
      this.heightSize,
      this.color,
      this.label,
      this.onPressed});
  final double widthSize;
  final double heightSize;
  final Color color;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    return Container(
      width: widthSize,
      height: heightSize,
      child: CupertinoButton(
        color: color,
        child: Text(
          label,
          style: _textTheme.body1.copyWith(color: Colors.white, fontSize: 16.0),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
