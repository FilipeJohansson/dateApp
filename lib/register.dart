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
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Text(Strings.signUpTitle,
                          style: TextStyle(color: Colors.white, fontSize: 40)),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height / 1.5,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                DefaultButton(
                                  text: Strings.google,
                                  margin: EdgeInsets.only(
                                      right: _buttonsMarginSide,
                                      left: _buttonsMarginSide,
                                      bottom: 20),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                DefaultButton(
                                  text: Strings.facebook,
                                  margin: EdgeInsets.only(
                                      right: _buttonsMarginSide,
                                      left: _buttonsMarginSide,
                                      bottom: 20),
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
              Container(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height / 11,
                ),
                child: Padding(
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
                          recognizer: TapGestureRecognizer()..onTap = () {},
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
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
