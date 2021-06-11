import 'package:flutter/material.dart';
import 'package:flutter_login/screen/login/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(body: Body(size: size));
  }
}
