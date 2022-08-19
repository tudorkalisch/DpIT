import 'package:buildnow/constants/constants.dart';
import 'package:flutter/material.dart';

class SupplierRegisterPageLogo extends StatelessWidget {
  final screenWidth;
  final screenHeight;

  SupplierRegisterPageLogo({this.screenWidth, this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: screenHeight * 0.016,
      child: Image.asset(
        blueLogoPath,
        scale: 1 / screenWidth * 22500
      )
    );
  }
}