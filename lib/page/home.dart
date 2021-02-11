import 'package:date_app/values/strings.dart';
import 'package:date_app/values/backgrounds.dart';
import 'package:date_app/values/buttons.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  //static const routeName = '/Col';
  Home({Key key}) : super(key: key);

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultBackground(
        child: Column(
          children: [
            Flexible(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png',
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.20),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      DefaultButton(
                        text: Strings.signIn,
                        margin: EdgeInsets.only(right: 4.5, left: 10),
                        onTap: () {
                          Navigator.pushNamed(context, "/login");
                        },
                      ),
                      DefaultButton(
                        text: Strings.signUp,
                        margin: EdgeInsets.only(right: 10, left: 4.5),
                        onTap: () {
                          Navigator.pushNamed(context, "/register");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: TxtButton(
                      text: Strings.loginProblems,
                      onTap: () {
                        print(Strings.loginProblems);
                      },
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
