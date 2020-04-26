import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:inunpad/ui/shared/global_button.dart';
import 'package:inunpad/ui/shared/global_textfield.dart';
import 'package:inunpad/ui/ui_helper.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    String birthDate = 'abcd';
    return SimpleDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      contentPadding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      children: <Widget>[
        Center(
          child: Column(
            children: <Widget>[
              Text(
                'Create New Account',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              UIHelper.vSpaceSmall(),
              GlobalTextField(
                label: 'Name',
              ),
              UIHelper.vSpaceSmall(),
              GlobalTextField(
                label: 'Faculty',
              ),
              UIHelper.vSpaceSmall(),
              GlobalTextField(
                label: 'Department',
              ),
              UIHelper.vSpaceSmall(),
              GlobalTextField(
                label: 'Student ID',
              ),
              UIHelper.vSpaceSmall(),
              GlobalTextField(
                label: 'Phone Number',
                keyboardType: TextInputType.number,
              ),
              UIHelper.vSpaceSmall(),
              GlobalTextField(
                label: 'User ID',
              ),
              UIHelper.vSpaceSmall(),
              GlobalTextField(
                label: 'Password',
                obscureText: true,
              ),
              UIHelper.vSpaceSmall(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    DatePicker.showDatePicker(
                      context,
                      onChange: (dateTime, List<int> index) {
                        setState(() {
                          birthDate = dateTime.toString();
                          print('$birthDate');
                        });
                      },
                    );
                  });
                },
                child: Container(
                  child: Text(birthDate),
                ),
              ),
              GlobalButton(
                label: 'Sign Up',
                heightSize: 47.0,
                widthSize: 200.0,
                color: Color(0xFF16415A),
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
