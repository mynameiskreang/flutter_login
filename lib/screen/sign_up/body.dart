import 'package:flutter/material.dart';
import 'package:flutter_login/components/already_have_an_account_check.dart';
import 'package:flutter_login/components/or_divider.dart';
import 'package:flutter_login/components/rounded_button.dart';
import 'package:flutter_login/components/rounded_input_field.dart';
import 'package:flutter_login/components/rounded_password_field.dart';
import 'package:flutter_login/components/social_icon.dart';
import 'package:flutter_login/constants.dart';
import 'package:flutter_login/screen/login/login_screen.dart';
import 'package:flutter_login/screen/sign_up/background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        size: size,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Sign Up",
                textScaleFactor: size.height * 0.003,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.35,
              ),
              RoundedInputField(
                  size: size,
                  icon: Icons.person,
                  color: kPrimaryColor,
                  text: "Your Email",
                  onChanges: (value) {}),
              RoundedPasswordField(size: size, onChanged: (value) {}),
              RoundedButton(text: "Sign Up", press: () {}),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  }),
              SizedBox(height: size.height * 0.02),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(
                    iconSVG: "assets/icons/facebook.svg",
                    press: () {},
                  ),
                  SocialIcon(
                    iconSVG: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                  SocialIcon(
                    iconSVG: "assets/icons/google-plus.svg",
                    press: () {},
                  )
                ],
              )
            ],
          ),
        ));
  }
}
