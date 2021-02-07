import 'package:flutter/material.dart';
import 'package:date_app/login.dart';
import 'package:date_app/register.dart';
import 'package:date_app/home.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  App({Key key}) : super(key: key);
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.from(
            colorScheme:
                ColorScheme.fromSwatch(primarySwatch: Colors.lightGreen)),
        initialRoute: '/home',
        routes: {
          '/home': (context) => Home(),
          '/register': (context) => Register(),
          '/login': (context) => Login(),
        });
  }
}
