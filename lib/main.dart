import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';
import 'package:flutter_login/screen/sign_up/sign_up_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Login',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.from(colorScheme: ColorScheme.light()).copyWith(
            primaryColor: kPrimaryColor,
            textButtonTheme: TextButtonThemeData(style: flatButtonStyle),
            elevatedButtonTheme:
                ElevatedButtonThemeData(style: raisedButtonStyle),
            outlinedButtonTheme:
                OutlinedButtonThemeData(style: outlineButtonStyle)),
        home: SignUpScreen());
  }
}
