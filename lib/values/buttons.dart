import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import 'colors.dart';

typedef OnTap = void Function();

class DefaultButton extends StatefulWidget {
  final String text;
  final EdgeInsetsGeometry margin;
  final OnTap onTap;
  final bool expanded;

  DefaultButton({Key key, this.text, this.margin, this.onTap, this.expanded})
      : super(key: key);

  @override
  _DefaultButton createState() => _DefaultButton();
}

class _DefaultButton extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    Widget current;
    Widget button = Container(
      margin: widget.margin,
      child: OutlineGradientButton(
        backgroundColor: AppColors.backgroud,
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        gradient: LinearGradient(
          colors: [AppColors.goldenLight, AppColors.goldenDark],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        strokeWidth: 2,
        radius: Radius.circular(4),
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
            if (widget.onTap != null) {
              widget.onTap();
            }
          });
        },
      ),
    );

    bool _isExpanded = true;

    if (widget.expanded == false) _isExpanded = false;

    if (_isExpanded)
      current = Expanded(child: button);
    else
      current = button;

    return current;
  }
}

class ActionButton extends StatefulWidget {
  final String text;
  final EdgeInsetsGeometry margin;
  final OnTap onTap;
  final bool expanded;

  ActionButton({Key key, this.text, this.margin, this.onTap, this.expanded})
      : super(key: key);

  @override
  _ActionButton createState() => _ActionButton();
}

class _ActionButton extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    Widget current;
    Widget button = Container(
      margin: widget.margin,
      child: OutlineGradientButton(
        backgroundColor: AppColors.backgroud,
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        gradient: LinearGradient(
          colors: [AppColors.blueLight, AppColors.blueDark],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        strokeWidth: 2,
        radius: Radius.circular(4),
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
            if (widget.onTap != null) {
              widget.onTap();
            }
          });
        },
      ),
    );

    bool _isExpanded = true;

    if (widget.expanded == false) _isExpanded = false;

    if (_isExpanded)
      current = Expanded(child: button);
    else
      current = button;

    return current;
  }
}

class TxtButton extends StatefulWidget {
  final String text;
  final OnTap onTap;
  final bool expanded;

  const TxtButton({Key key, this.text, this.onTap, this.expanded})
      : super(key: key);

  @override
  _TxtButton createState() => _TxtButton();
}

class _TxtButton extends State<TxtButton> {
  @override
  Widget build(BuildContext context) {
    Widget current;
    Widget button = Container(
      child: FlatButton(
        color: Colors.transparent,
        child: Text(widget.text,
            style: TextStyle(
                color: Color(0xFFBC9559),
                fontSize: 15,
                decoration: TextDecoration.underline)),
        onPressed: () {
          setState(() {
            if (widget.onTap != null) {
              widget.onTap();
            }
          });
        },
      ),
    );

    bool _isExpanded = true;

    if (widget.expanded == false) _isExpanded = false;

    if (_isExpanded)
      current = Expanded(child: button);
    else
      current = button;

    return current;
  }
}
