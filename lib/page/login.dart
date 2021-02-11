import 'package:date_app/values/inputs.dart';
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        elevation: 0.0,
      ),
      body: DefaultBackground(
        child: Column(
          children: [
            SizedBox(
              height: kToolbarHeight + 20,
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Text(Strings.signInTitle,
                        style: TextStyle(color: Colors.white, fontSize: 40)),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DefaultInput(
                    hint: Strings.hintEmail,
                    margin: EdgeInsets.only(right: 10, left: 10, bottom: 20),
                  ),
                  DefaultInput(
                    hint: Strings.hintPass,
                    type: 'Password',
                    margin: EdgeInsets.only(right: 10, left: 10),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: Row(
                      children: [
                        TxtButton(
                          text: 'Esqueceu a senha?',
                        ),
                        ActionButton(
                          text: Strings.signIn,
                          margin: EdgeInsets.only(
                            right: _buttonsMarginSide,
                            left: _buttonsMarginSide,
                          ),
                          expanded: true,
                          onTap: () {
                            Navigator.pushNamed(context, "/like");
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 30.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        BrownButton(
                          text: Strings.google,
                          margin: EdgeInsets.only(
                              right: _buttonsMarginSide,
                              left: _buttonsMarginSide,
                              bottom: 20),
                          image: 'assets/images/googleIcon.png',
                        ),
                        BrownButton(
                          text: Strings.facebook,
                          margin: EdgeInsets.only(
                              right: _buttonsMarginSide,
                              left: _buttonsMarginSide,
                              bottom: 20),
                          image: 'assets/images/facebookIcon.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
