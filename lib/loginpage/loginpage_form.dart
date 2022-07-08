import 'package:flutter/material.dart';

import './loginpage_logo.dart';

class LoginPageForm extends StatelessWidget {
  final screenWidth;
  final screenHeight;

  LoginPageForm({this.screenWidth, this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 90,
      child: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 1,
        alignment: Alignment.topLeft,
        child: Stack(
          alignment: Alignment.center,
          children: [
            LoginPageLogo(screenHeight: screenHeight, screenWidth: screenWidth),
            Positioned(
              top: screenHeight * 0.12,
              child: DefaultTextStyle(
                style: TextStyle(color: Color(0xff264653), fontSize: screenWidth * 0.0275, fontWeight: FontWeight.bold),
                child: Text(
                  "Log In",
                  textAlign: TextAlign.center,
                )
              ) 
            ),
            Positioned(
              top: screenHeight * 0.22,
              child: DefaultTextStyle(
                style: TextStyle(color: Color(0xff264653), fontSize: screenWidth * 0.0135, fontWeight: FontWeight.w500),
                child: Text(
                  "Welcome!",
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Positioned(
              top: screenHeight * 0.26,
              child: DefaultTextStyle(
                style: TextStyle(color: Color(0xff264653), fontSize: screenWidth * 0.0115),
                child: Text(
                  "Please log in to your account",
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Positioned(
              top: screenHeight * 0.34,
              child: SizedBox(
                height: screenHeight * 0.08,
                width: screenWidth * 0.2,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "E-mail"
                  ),
                )
              )
            ),
            Positioned(
              top: screenHeight * 0.45,
              child: SizedBox(
                height: screenHeight * 0.08,
                width: screenWidth * 0.2,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password"
                  ),
                )
              )
            ),
            Positioned(
              bottom: screenHeight * 0.1,
              child: Container(
                width: screenWidth * 0.1,
                height: screenHeight * 0.04,
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      color: Colors.blue
                    )
                  ),
                  onPressed: () {},
                  child: const Text("Forgot password?")
                ),
              )
            ),
          ]
        )
      ),
    );
  }
}