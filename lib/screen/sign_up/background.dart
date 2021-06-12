import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Size size;
  final Widget child;

  const Background({Key? key, required this.size, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              width: size.width * 0.35,
              top: 0,
              left: 0,
              child: Image.asset("assets/images/signup_top.png")),
          Positioned(
              width: size.width * 0.2,
              bottom: 0,
              left: 0,
              child: Image.asset("assets/images/main_bottom.png")),
          child
        ],
      ),
    );
  }
}
