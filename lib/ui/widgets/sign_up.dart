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
<<<<<<< HEAD
  String birthDate = 'abcd';
=======
  List<String> birthDate = ['Tanggal Lahir'];
>>>>>>> 46f41a9d726db97e62ce8f8ebc60721f3c0e3f94
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
                'Create New Account',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
<<<<<<< HEAD
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
=======
              UIHelper.vSpaceXSmall(),
              GlobalTextField(
                label: 'Name',
              ),
              UIHelper.vSpaceXSmall(),
              GlobalTextField(
                label: 'Faculty',
              ),
              UIHelper.vSpaceXSmall(),
              GlobalTextField(
                label: 'Department',
              ),
              UIHelper.vSpaceXSmall(),
              GlobalTextField(
                label: 'Student ID',
              ),
              UIHelper.vSpaceXSmall(),
>>>>>>> 46f41a9d726db97e62ce8f8ebc60721f3c0e3f94
              GlobalTextField(
                label: 'Phone Number',
                keyboardType: TextInputType.number,
              ),
<<<<<<< HEAD
              UIHelper.vSpaceSmall(),
              GlobalTextField(
                label: 'User ID',
              ),
              UIHelper.vSpaceSmall(),
=======
              UIHelper.vSpaceXSmall(),
              GlobalTextField(
                label: 'User ID',
              ),
>>>>>>> 46f41a9d726db97e62ce8f8ebc60721f3c0e3f94
              GlobalTextField(
                label: 'Password',
                obscureText: true,
              ),
<<<<<<< HEAD
              UIHelper.vSpaceSmall(),
=======
              UIHelper.vSpaceXSmall(),
>>>>>>> 46f41a9d726db97e62ce8f8ebc60721f3c0e3f94
              GestureDetector(
                onTap: () {
                  setState(() {
                    DatePicker.showDatePicker(
                      context,
                      onChange: (dateTime, List<int> index) {
                        setState(() {
<<<<<<< HEAD
                          birthDate = dateTime.toString();
                          print('$birthDate');
=======
                          birthDate = dateTime.toString().split(" ");
                          print(birthDate);
                          print(birthDate[0]);
>>>>>>> 46f41a9d726db97e62ce8f8ebc60721f3c0e3f94
                        });
                      },
                    );
                  });
                },
                child: Container(
<<<<<<< HEAD
                  child: Text(birthDate),
                ),
              ),
=======
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1, color: Colors.grey))),
                  child: Center(
                    child: Text(
                      birthDate[0],
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ),
              ),
              UIHelper.vSpaceXSmall(),
              UIHelper.vSpaceXSmall(),
>>>>>>> 46f41a9d726db97e62ce8f8ebc60721f3c0e3f94
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
