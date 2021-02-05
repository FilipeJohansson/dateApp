import 'package:date_app/appColors.dart';
import 'package:flutter/material.dart';

class Backgrounds {
  Backgrounds._();

  static final Container backgroundDefault = Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.backgroundLight, AppColors.backgroundDark]),
    ),
  );
}

class DefaultBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.backgroundLight, AppColors.backgroundDark]),
      ),
    );
  }
}
