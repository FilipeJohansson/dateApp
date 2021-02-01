import 'package:flutter/material.dart';

class Backgrounds {
  Backgrounds._();

  static const defaultLightColor = Color(0xFF273743);
  static const defaultDarkColor = Color(0xFF060910);

  static final Container backgroundDefault = Container(
    decoration: BoxDecoration(
      color: defaultLightColor,
      /*gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [default_light_color, default_dark_color]),*/
    ),
  );
}
