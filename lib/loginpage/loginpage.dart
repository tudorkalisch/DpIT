import 'package:flutter/material.dart';

import './loginpage_form.dart';
import 'loginpage_image.dart';

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
                    image: AssetImage("assets/gradient.png"),
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
                                color: Color(0xff2a9d8f))),
                        LoginPageImage()
                      ],
                    )))));
  }
}
