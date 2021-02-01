import 'package:flutter/material.dart';

class Backgrounds {
  Backgrounds._();

  static const default_light_color = Color(0xFF273743);
  static const default_dark_color = Colors.white12;

  static final Container background_default = Container(
    decoration: BoxDecoration(
      color: default_light_color,
      /*gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [default_light_color, default_dark_color]),*/
    ),
  );
}
