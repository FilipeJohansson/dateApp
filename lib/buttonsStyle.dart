import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import 'appColors.dart';

class DefaultButton extends StatefulWidget {
  DefaultButton({Key key, this.text}) : super(key: key);

  final String text;

  @override
  _DefaultButton createState() => _DefaultButton();
}

class _DefaultButton extends State<DefaultButton> {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 3, left: 3),
      child: OutlineGradientButton(
        backgroundColor: AppColors.defaultButtonBackgroud,
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        gradient: LinearGradient(
          colors: _hasBeenPressed
              ? [
                  AppColors.defaultButtonBorderPressedLight,
                  AppColors.defaultButtonBorderPressedDark
                ]
              : [
                  AppColors.defaultButtonBorderColorLight,
                  AppColors.defaultButtonBorderColorDark
                ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        strokeWidth: 3,
        radius: Radius.circular(8),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Roboto-Black',
                letterSpacing: 1.5),
          ),
        ),
        onTap: () {
          setState(() {
            _hasBeenPressed = !_hasBeenPressed;
          });
        },
      ),
    );
  }
}
