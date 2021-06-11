import 'package:flutter/material.dart';
import 'package:flutter_login/components/text_filed_container.dart';
import 'package:flutter_login/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final Size size;
  final ValueChanged<String> onChanged;

  const RoundedPasswordField(
      {Key? key, required this.size, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        size: size,
        child: TextField(
          obscureText: true,
          onChanged: onChanged,
          decoration: InputDecoration(
              hintText: "Password",
              icon: Icon(Icons.lock, color: kPrimaryColor),
              suffixIcon: Icon(
                Icons.visibility,
                color: kPrimaryColor,
              ),
              border: InputBorder.none),
        ));
  }
}
