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
        scaffoldBackgroundColor: Backgrounds.defaultLightColor,
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
  //ButtonsStyle button = new ButtonsStyle();

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
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(child: ButtonsStyle.defaultButton(Strings.signIn)),
                Container(child: ButtonsStyle.defaultButton(Strings.signUp)),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(Strings.loginProblems,
                  style: TextStyle(color: Color(0xFFC8A459), fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }
}
