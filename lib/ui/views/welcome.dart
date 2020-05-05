import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'auth');
          },
          child: Container(
            width: 280,
            height: 270,
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 60),
            decoration: BoxDecoration(
                color: Color(0xFF16415A).withOpacity(0.3),
                shape: BoxShape.circle),
            child: Image.asset(
              'images/logo.png',
              width: 150,
              height: 200,
            ),
          ),
        ),
      )),
    );
  }
}
