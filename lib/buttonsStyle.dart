import 'package:flutter/material.dart';
import 'package:date_app/strings.dart';

class ButtonsStyle {
  ButtonsStyle._();

  static const defaultButtonBorderColor = Color(0xFFC8A459);

  static RaisedButton defaultButton(String text) {
    return RaisedButton(
      color: Color(0xFF1E282D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(color: defaultButtonBorderColor, width: 3),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(top: 20.0, bottom: 20.0, right: 36.0, left: 36.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      onPressed: () {
        if (text.compareTo(Strings.signIn) == 0) {
          //o que tem que acontecer
        } //outras ações resultantes de botões com esse estilo
      },
    );
  }
}
