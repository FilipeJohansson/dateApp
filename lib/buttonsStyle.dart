import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import 'appColors.dart';

typedef Func = void Function();

class DefaultButton extends StatefulWidget {
  final String text;
  final Func func;

  DefaultButton({Key key, @required this.text, @required this.func})
      : super(key: key);

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
        backgroundColor: AppColors.backgroud,
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        gradient: LinearGradient(
          colors: _hasBeenPressed
              ? [AppColors.blueLight, AppColors.blueDark]
              : [AppColors.goldenLight, AppColors.goldenDark],
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

            if (widget.func != null) {
              widget.func();
            }
          });
        },
      ),
    );
  }
}
