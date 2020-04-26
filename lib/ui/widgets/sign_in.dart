import 'package:flutter/material.dart';
import 'package:inunpad/ui/shared/global_button.dart';
import 'package:inunpad/ui/shared/global_textfield.dart';
import 'package:inunpad/ui/ui_helper.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      contentPadding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      children: <Widget>[
        Center(
          child: Column(
            children: <Widget>[
              Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              UIHelper.vSpaceSmall(),
              GlobalTextField(
                label: 'Username',
                textIcon: Icons.person_outline,
              ),
              UIHelper.vSpaceSmall(),
              GlobalTextField(
                label: 'Password',
                obscureText: true,
                textIcon: Icons.lock,
              ),
              UIHelper.vSpaceSmall(),
              GlobalButton(
                label: 'Sign In',
                heightSize: 47.0,
                widthSize: 200.0,
                color: Color(0xFF16415A),
                onPressed: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}
