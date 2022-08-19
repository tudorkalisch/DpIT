import 'package:buildnow/constants/constants.dart';
import 'package:flutter/material.dart';

import 'supplier_registerpage_form.dart';
import 'supplier_registerpage_image.dart';

class SupplierRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(registerPageGradientPath),
                    fit: BoxFit.cover)),
            child: Center(
                child: Container(
                    constraints: BoxConstraints(minHeight: 350, minWidth: 665),
                    width: screenWidth * 0.61,
                    height: screenHeight * 0.85,
                    color: Colors.white,
                    child: Row(
                      children: [
                        SupplierRegisterPageImage(),
                        Expanded(
                            flex: 1,
                            child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                color: buttonColor)),
                        SupplierRegisterPageForm(
                            screenHeight: screenHeight,
                            screenWidth: screenWidth),
                      ],
                    )))));
  }
}