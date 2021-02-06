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
      body: DefaultBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              initialValue: Strings.username,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  backgroundColor: Colors.white
                  ),
                errorText: 'Error message',
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.error,
                ),
              ),
            ),
            DefaultButton(
              text: Strings.signIn,
              margin: EdgeInsets.only(
                right: _buttonsMarginSide,
                left: _buttonsMarginSide,
                bottom: 20),
              expanded: false,
            ),
          ],
        ),
      ),
    );
  }
}
