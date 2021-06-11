import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color? color;
  final Color? textColor;
  const RoundedButton(
      {required this.text,
      required this.press,
      this.color = kPrimaryColor,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.06,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
            padding: kPaddingSymmetric,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(29)),
            ),
          ),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          )),
    );
  }
}
