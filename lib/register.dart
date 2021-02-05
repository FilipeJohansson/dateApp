import 'package:date_app/values/strings.dart';
import 'package:date_app/values/backgrounds.dart';
import 'package:date_app/values/buttons.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  //static const routeName = '/Col';
  Register({Key key}) : super(key: key);

  @override
  _Register createState() => _Register();
}

class _Register extends State<Register> {
  double _buttonsMarginSide = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            DefaultButton(
              text: Strings.google,
              margin: EdgeInsets.only(
                  right: _buttonsMarginSide,
                  left: _buttonsMarginSide,
                  bottom: 20),
              expanded: false,
            ),
            DefaultButton(
              text: Strings.facebook,
              margin: EdgeInsets.only(
                  right: _buttonsMarginSide, left: _buttonsMarginSide),
              expanded: false,
            ),
          ],
        ),
      ),
    );
  }
}
