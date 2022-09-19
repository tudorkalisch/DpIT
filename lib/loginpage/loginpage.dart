import 'package:flutter/material.dart';

import './loginpage_form.dart';
import 'loginpage_image.dart';

import '../constants/constants.dart' as Constansts;


class LoginPage extends StatelessWidget {

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
                    image: AssetImage(Constansts.blueGradientPath),
                    fit: BoxFit.cover)),
            child: Center(
                child: Container(
                    constraints: BoxConstraints(minHeight: 350, minWidth: 665),
                    width: screenWidth * 0.61,
                    height: screenHeight * 0.85,
                    color: Colors.white,
                    child: Row(
                      children: [
                        LoginPageForm(
                            screenHeight: screenHeight,
                            screenWidth: screenWidth),
                        Expanded(
                            flex: 1,
                            child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                color: const Color(Constansts.gradientBaseGreen))),
                        LoginPageImage()
                      ],
                    )))));
  }
}
