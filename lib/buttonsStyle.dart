import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class ButtonsStyle {
  ButtonsStyle._();

  static const defaultButtonBorderColor = Color(0xFFC8A459);
  static const defaultButtonBackgroud = Color(0xFF1E282D);
  static const defaultButtonBorderColorLight = Color(0xFFC8A459);
  static const defaultButtonBorderColorDark = Color(0xFF463714);

  /*static RaisedButton defaultButton(String text) {
    return RaisedButton(
      color: Color(0xFF1E282D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(color: defaultButtonBorderColor, width: 3),
      ),
      child: Container(
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      onPressed: () {
        print(text);
      },
    );
  }*/

  static defaultButton(String text) {
    return Container(
      margin: EdgeInsets.only(right: 3, left: 3),
      child: OutlineGradientButton(
        backgroundColor: defaultButtonBackgroud,
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        gradient: LinearGradient(
          colors: [defaultButtonBorderColorLight, defaultButtonBorderColorDark],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        strokeWidth: 3,
        radius: Radius.circular(8),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Roboto-Black',
                letterSpacing: 1.5),
          ),
        ),
        onTap: () {
          print(text);
        },
      ),
    );
  }
}
