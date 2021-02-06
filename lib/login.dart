import 'package:date_app/values/strings.dart';
import 'package:date_app/values/backgrounds.dart';
import 'package:date_app/values/buttons.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  //static const routeName = '/Col';
  Login({Key key}) : super(key: key);

  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  double _buttonsMarginSide = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultBackground(children: <Widget>[
        Text(Strings.signUpTitle,
            style: TextStyle(color: Colors.white, fontSize: 40)),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            DefaultButton(
              text: Strings.signIn,
              margin: EdgeInsets.only(
                  right: _buttonsMarginSide,
                  left: _buttonsMarginSide,
                  bottom: 20),
            ),
          ],
        ),
      ]),
    );
  }
}
