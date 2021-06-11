import 'package:flutter/material.dart';
import 'package:flutter_login/components/rounded_input_field.dart';
import 'package:flutter_login/constants.dart';
import 'package:flutter_login/screen/login/background.dart';
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Login",
            textScaleFactor: size.height * 0.003,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
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
          RoundedInputField(
              text: "Your Password",
              onChanges: (value) {},
              size: size,
              icon: Icons.lock,
              color: kPrimaryColor),
        ],
      ),
    );
  }
}
