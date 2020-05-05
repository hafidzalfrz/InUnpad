import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inunpad/ui/shared/global_button.dart';
import 'package:inunpad/ui/ui_helper.dart';
import 'package:inunpad/ui/widgets/sign_in.dart';
import 'package:inunpad/ui/widgets/sign_up.dart';

class AuthView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
<<<<<<< HEAD
=======
            Container(
              width: 280,
              height: 270,
              margin: EdgeInsets.only(bottom: 120),
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
>>>>>>> 46f41a9d726db97e62ce8f8ebc60721f3c0e3f94
            GlobalButton(
              widthSize: 300.0,
              color: Color(0xFF16415A),
              label: 'Sign In',
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SignIn();
                    });
              },
            ),
            UIHelper.vSpaceSmall(),
            GlobalButton(
              widthSize: 300.0,
              color: Color(0xFF16415A),
              label: 'Sign Up',
              onPressed: () {
                showDialog(
<<<<<<< HEAD
                    context: context,
                    builder: (context) {
                      return SignUp();
                    });
              },
            ),
=======
                  context: context,
                  builder: (context) {
                    return SignUp();
                  },
                );
              },
            ),
            UIHelper.vSpaceMedium()
>>>>>>> 46f41a9d726db97e62ce8f8ebc60721f3c0e3f94
          ],
        ),
      )),
    );
  }
}
