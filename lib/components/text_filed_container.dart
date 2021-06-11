import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Size size;
  final Widget child;

  const TextFieldContainer({Key? key, required this.size, required this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: kPrimaryLightColor, borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
