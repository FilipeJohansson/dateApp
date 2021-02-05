import 'package:date_app/values/colors.dart';
import 'package:flutter/material.dart';

class DefaultBackground extends StatelessWidget {
  final Widget child;

  const DefaultBackground({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.backgroundLight, AppColors.backgroundDark]),
      ),
    );
  }
}
