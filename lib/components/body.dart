import 'package:flutter/material.dart';
import 'package:flutter_login/components/background.dart';
import 'package:flutter_login/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Welcome To Kreangkrai.com",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            'assets/icons/chat.svg',
            height: size.height * 0.45,
          ),
          TextButton(
              style: flatButtonStyle,
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
