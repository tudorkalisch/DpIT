import 'package:flutter/material.dart';

import '../constants/constants.dart' as Constants;

class LoginPageLogo extends StatelessWidget {
  final screenWidth;
  final screenHeight;

  LoginPageLogo({this.screenWidth, this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: screenHeight * 0.016,
      child: Image.asset(
        Constants.blueLogoPath,
        scale: 1 / screenWidth * 22500
      )
    );
  }
}