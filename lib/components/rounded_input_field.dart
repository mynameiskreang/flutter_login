import 'package:flutter/material.dart';
import 'package:flutter_login/components/text_filed_container.dart';

class RoundedInputField extends StatelessWidget {
  final Size size;
  final IconData icon;
  final Color color;
  final String text;
  final ValueChanged<String> onChanges;

  const RoundedInputField(
      {Key? key,
      required this.size,
      required this.icon,
      required this.color,
      required this.text,
      required this.onChanges})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      size: size,
      child: TextField(
        onChanged: onChanges,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: color,
            ),
            hintText: text,
            border: InputBorder.none),
      ),
    );
  }
}
