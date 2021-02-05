import 'package:date_app/appColors.dart';
import 'package:date_app/backgrounds.dart';
import 'package:date_app/buttonsStyle.dart';
import 'package:date_app/strings.dart';
import 'package:flutter/material.dart';

void main() {
  Paint.enableDithering = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroud,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image.asset('assets/logo.png',
                alignment: Alignment(0, -10),
                width: MediaQuery.of(context).size.width * 0.20,
                height: MediaQuery.of(context).size.height * 0.20),
            ListTile(
              title: Row(
                children: <Widget>[
                  Expanded(
                      child: DefaultButton(
                    text: Strings.signIn,
                    func: () {
                      print(Strings.signIn);
                    },
                  )),
                  Expanded(
                      child: DefaultButton(
                    text: Strings.signUp,
                    func: () {
                      print(Strings.signUp);
                    },
                  )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(Strings.loginProblems,
                  style: TextStyle(color: Color(0xFFBC9559), fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }
}
