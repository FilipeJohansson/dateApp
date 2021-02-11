import 'package:date_app/page/like.dart';
import 'package:date_app/provider/feedback_position_provider.dart';
import 'package:flutter/material.dart';
import 'package:date_app/page/login.dart';
import 'package:date_app/page/register.dart';
import 'package:date_app/page/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => FeedbackPositionProvider(),
        child: MaterialApp(
          title: 'Lol Date App',
          theme: ThemeData(
            colorScheme:
                ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: '/home',
          routes: {
            '/home': (context) => Home(),
            '/register': (context) => Register(),
            '/login': (context) => Login(),
            '/like': (context) => Like(),
          },
        ),
      );
}
