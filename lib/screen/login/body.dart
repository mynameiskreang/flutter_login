import 'package:flutter/material.dart';
import 'package:flutter_login/components/already_have_an_account_check.dart';
import 'package:flutter_login/components/rounded_button.dart';
import 'package:flutter_login/components/rounded_input_field.dart';
import 'package:flutter_login/components/rounded_password_field.dart';
import 'package:flutter_login/constants.dart';
import 'package:flutter_login/screen/login/background.dart';
import 'package:flutter_login/screen/sign_up/sign_up_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Size size;
  const Body({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      size: size,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login",
              textScaleFactor: size.height * 0.003,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.02),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
                text: "Your Email",
                onChanges: (value) {},
                size: size,
                icon: Icons.person,
                color: kPrimaryColor),
            RoundedPasswordField(size: size, onChanged: (value) {}),
            RoundedButton(text: "Login", press: () {}),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(press: () {
              press:
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpScreen();
              }));
            })
          ],
        ),
      ),
    );
  }
}
