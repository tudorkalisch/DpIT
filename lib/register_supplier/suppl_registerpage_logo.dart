import 'package:flutter/material.dart';

class SupplRegisterPageLogo extends StatelessWidget {
  final screenWidth;
  final screenHeight;

  SupplRegisterPageLogo({this.screenWidth, this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: screenHeight * 0.016,
      child: Image.asset(
        "assets/bluelogo.png",
        scale: 1 / screenWidth * 22500
      )
    );
  }
}