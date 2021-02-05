import 'package:flutter/material.dart';
import 'package:date_app/strings.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class ButtonsStyle {
  ButtonsStyle._();

  static const defaultButtonBackgroud = Color(0xFF1E282D);
  static const defaultButtonBorderColorLight = Color(0xFFC8A459);
  static const defaultButtonBorderColorDark = Color(0xFF463714);

  static OutlineGradientButton defaultButton(String text) {
    return OutlineGradientButton(
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 20)),
      backgroundColor: defaultButtonBackgroud,
      padding:
          EdgeInsets.only(top: 20.0, bottom: 20.0, right: 36.0, left: 36.0),
      gradient: LinearGradient(
        colors: [defaultButtonBorderColorLight, defaultButtonBorderColorDark],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      strokeWidth: 4,
      radius: Radius.circular(8),
      onTap: () {},
    );
  }
}
