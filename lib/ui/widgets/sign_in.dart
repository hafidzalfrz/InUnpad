import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:inunpad/ui/shared/global_button.dart';
import 'package:inunpad/ui/shared/global_textfield.dart';
import 'package:inunpad/ui/ui_helper.dart';
=======
import 'package:inunpad/core/result.dart';
import 'package:inunpad/ui/shared/global_button.dart';
import 'package:inunpad/ui/shared/global_textfield.dart';
import 'package:inunpad/ui/ui_helper.dart';
import 'package:inunpad/ui/views/base_view.dart';
import 'package:inunpad/core/viewmodels/auth_viewmodel.dart';
>>>>>>> 46f41a9d726db97e62ce8f8ebc60721f3c0e3f94

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
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
=======
    return BaseView<AuthViewModel>(
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => SimpleDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
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
                  onChanged: (value) => model.name = value,
                ),
                UIHelper.vSpaceSmall(),
                GlobalTextField(
                  label: 'Password',
                  obscureText: true,
                  textIcon: Icons.lock,
                  onChanged: (value) => model.password = value,
                ),
                UIHelper.vSpaceSmall(),
                GlobalButton(
                  label: 'Sign In',
                  heightSize: 47.0,
                  widthSize: 200.0,
                  color: Color(0xFF16415A),
                  onPressed: () async {
                    Result result = await model.login();
                    model.flush(result).show(context);
                  },
                )
              ],
            ),
          )
        ],
      ),
>>>>>>> 46f41a9d726db97e62ce8f8ebc60721f3c0e3f94
    );
  }
}
