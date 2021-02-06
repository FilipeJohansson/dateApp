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
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image.asset('assets/logo.png',
                alignment: Alignment(0, -10),
                width: MediaQuery.of(context).size.width * 0.20,
                height: MediaQuery.of(context).size.height * 0.20),
            Row(
              children: <Widget>[
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
            Padding(
              padding: EdgeInsets.all(10.0),
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
    );
  }
}
