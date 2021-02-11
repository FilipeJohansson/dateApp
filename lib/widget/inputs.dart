import 'package:flutter/material.dart';
import 'package:gradient_input_border/gradient_input_border.dart';

import '../values/colors.dart';

class DefaultInput extends StatefulWidget {
  final String hint;
  final String type;
  final EdgeInsetsGeometry margin;

  DefaultInput({
    Key key,
    this.margin,
    this.hint,
    this.type,
  }) : super(key: key);

  @override
  _DefaultInput createState() => _DefaultInput();
}

class _DefaultInput extends State<DefaultInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      child: TextFormField(
        obscureText: widget.type == 'Password' ? true : false,
        style: TextStyle(color: Colors.black),
        decoration: new InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: widget.hint,
          hintStyle: TextStyle(color: Colors.black54),
          border: GradientOutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(0)),
              focusedGradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.blueLight, AppColors.blueDark]),
              unfocusedGradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.blueLight, AppColors.blueDark])),
        ),
        validator: (value) {
          if (widget.type == 'Password') {
            if (value.trim().isEmpty) {
              return 'Password is required';
            }
          }
        },
      ),
    );
  }
}
