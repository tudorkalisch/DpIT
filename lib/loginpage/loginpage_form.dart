import 'package:flutter/material.dart';

import './loginpage_logo.dart';

import '../constants/constants.dart' as Constants;

class LoginPageForm extends StatefulWidget {
  final screenWidth;
  final screenHeight;
  const LoginPageForm({Key? key, this.screenHeight, this.screenWidth}) : super(key: key);

  @override
  State<LoginPageForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginPageForm> {
  @override
  Widget build(BuildContext context) {

    final mailController = TextEditingController();
    final passwordController = TextEditingController();

    var outlineColor = Color(0xffb9b9b9);

    logIn() {
      if (mailController.text == "" || passwordController.text == "") {
        setState(() {
          outlineColor = Colors.red;
        });
      }
    }

    return Expanded(
      flex: 90,
      child: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 1,
        alignment: Alignment.topLeft,
        child: Stack(
          alignment: Alignment.center,
          children: [
            LoginPageLogo(screenHeight: widget.screenHeight, screenWidth: widget.screenWidth),
            Positioned(
              top: widget.screenHeight * 0.12,
              child: DefaultTextStyle(
                style: TextStyle(color: Color(Constants.logoBlue), fontSize: Constants.titleFontSize, fontWeight: FontWeight.bold),
                child: Text(
                  "Log In",
                  textAlign: TextAlign.center,
                )
              ) 
            ),
            Positioned(
              top: widget.screenHeight * 0.21,
              child: DefaultTextStyle(
                style: TextStyle(color: Color(Constants.logoBlue), fontSize: Constants.subtitleFontSize, fontWeight: FontWeight.w500),
                child: Text(
                  "Welcome!",
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Positioned(
              top: widget.screenHeight * 0.25,
              child: DefaultTextStyle(
                style: TextStyle(color: Color(Constants.logoBlue), fontSize: Constants.secondSubtitleFontSize),
                child: Text(
                  "Please log in to your account",
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Positioned(
              top: widget.screenHeight * 0.34,
              child: SizedBox(
                height: widget.screenHeight * 0.08,
                width: widget.screenWidth * 0.2,
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: outlineColor) //here you can change outline color, remeber to finish implementation!
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: outlineColor)
                    ),
                    hintText: "E-mail",
                  ),
                  enableSuggestions: false,
                  autocorrect: false,
                  controller: mailController,
                )
              )
            ),
            Positioned(
              top: widget.screenHeight * 0.45,
              child: SizedBox(
                height: widget.screenHeight * 0.08,
                width: widget.screenWidth * 0.2,
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: outlineColor)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: outlineColor)
                    ),
                    hintText: "Password"
                  ),
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  controller: passwordController,
                )
              )
            ),
            Positioned(
              bottom: widget.screenHeight * 0.1,
              child: Container(
                width: widget.screenWidth * 0.1,
                height: widget.screenHeight * 0.04,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue
                  ),
                  onPressed: () {},
                  child: const Text("Forgot password?")
                ),
              )
            ),
            Positioned(
              bottom: widget.screenHeight * 0.19,
              left: widget.screenWidth * 0.04,
              child: Container(
                width: widget.screenWidth * 0.095,
                height: widget.screenHeight * 0.07,
                color: Color(Constants.coolGreen),
                child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black
                  ),
                  onPressed: logIn,
                  child: const Text("Log in")
                )
              )
            ),
            Positioned(
              bottom: widget.screenHeight * 0.19,
              right: widget.screenWidth * 0.04,
              child: Container(
                width: widget.screenWidth * 0.095,
                height: widget.screenHeight * 0.07,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(Constants.coolGreen), width: 3)
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black
                  ),
                  onPressed: () {},
                  child: const Text("Create account")
                )
              )
            )
          ]
        )
      ),
    );
  }
}