import 'package:date_app/values/inputs.dart';
import 'package:date_app/values/strings.dart';
import 'package:date_app/values/backgrounds.dart';
import 'package:date_app/values/buttons.dart';
import 'package:flutter/gestures.dart';
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        elevation: 0.0,
      ),
      body: DefaultBackground(
        child: Container(
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
                      child: Text(Strings.signUpTitle,
                          style: TextStyle(color: Colors.white, fontSize: 40)),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DefaultInput(
                      hint: Strings.hintEmail,
                      margin: EdgeInsets.only(right: 10, left: 10, bottom: 10),
                    ),
                    DefaultInput(
                      hint: Strings.hintPass,
                      type: 'Password',
                      margin: EdgeInsets.only(right: 10, left: 10, bottom: 10),
                    ),
                    DefaultInput(
                      hint: Strings.repeatHintPass,
                      type: 'Password',
                      margin: EdgeInsets.only(right: 10, left: 10),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                      ),
                      child: ActionButton(
                        text: Strings.signIn,
                        margin: EdgeInsets.only(
                          right: _buttonsMarginSide,
                          left: _buttonsMarginSide,
                        ),
                        expanded: true,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15.0,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'ou',
                            style: TextStyle(
                              color: Color(0xFFBC9559),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          BrownButton(
                            text: Strings.google,
                            margin: EdgeInsets.only(
                                right: _buttonsMarginSide,
                                left: _buttonsMarginSide,
                                bottom: 10),
                            image: 'assets/images/googleIcon.png',
                          ),
                          BrownButton(
                            text: Strings.facebook,
                            margin: EdgeInsets.only(
                                right: _buttonsMarginSide,
                                left: _buttonsMarginSide,
                                bottom: 10),
                            image: 'assets/images/facebookIcon.png',
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: Strings.agree,
                                  style: TextStyle(
                                    color: Color(0xFFBC9559),
                                    fontSize: 15,
                                  ),
                                ),
                                TextSpan(
                                  text: Strings.terms,
                                  style: TextStyle(
                                      color: Color(0xFFBC9559),
                                      fontSize: 15,
                                      decoration: TextDecoration.underline),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                ),
                                TextSpan(
                                  text: ' and ',
                                  style: TextStyle(
                                    color: Color(0xFFBC9559),
                                    fontSize: 15,
                                  ),
                                ),
                                TextSpan(
                                  text: Strings.policy,
                                  style: TextStyle(
                                      color: Color(0xFFBC9559),
                                      fontSize: 15,
                                      decoration: TextDecoration.underline),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
