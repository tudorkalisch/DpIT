import 'package:flutter/material.dart';

import 'registerpage_logo.dart';

class RegisterPageForm extends StatelessWidget {
  final screenWidth;
  final screenHeight;

  RegisterPageForm({this.screenWidth, this.screenHeight});

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
            RegisterPageLogo(screenHeight: screenHeight, screenWidth: screenWidth),
            Positioned(
              top: screenHeight * 0.07,
              child: DefaultTextStyle(
                style: TextStyle(color: Color.fromARGB(255, 27, 21, 18), fontSize: screenWidth * 0.0275, fontWeight: FontWeight.bold),
                child: Text(
                  "Register",
                  textAlign: TextAlign.center,
                )
              ) 
            ),
            Positioned(
              top: screenHeight * 0.15,
              child: DefaultTextStyle(
                style: TextStyle(color: Color.fromARGB(255, 27, 21, 18), fontSize: screenWidth * 0.0135, fontWeight: FontWeight.w500),
                child: Text(
                  "Welcome!",
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Positioned(
              top: screenHeight * 0.19,
              child: DefaultTextStyle(
                style: TextStyle(color: Color.fromARGB(255, 27, 21, 18), fontSize: screenWidth * 0.0115),
                child: Text(
                  "Please register for a better experience.",
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Positioned(
              top: screenHeight * 0.25,
              left: screenWidth * 0.052,
              child: SizedBox(
                height: screenHeight * 0.06,
                width: screenWidth * 0.095,
                child: RaisedButton(
                  child: Text(
                    "Supplier",
                  style: TextStyle(fontSize: screenWidth * 0.0115),
                  ),
                  color: Color.fromARGB(255, 42, 157, 143),
                  onPressed: (){},
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.25,
              left: screenWidth * 0.155,
              child: SizedBox(
                height: screenHeight * 0.06,
                width: screenWidth * 0.095,
                child: RaisedButton(
                  child: Text(
                    "Customer",
                  style: TextStyle(fontSize: screenWidth * 0.0115),
                  ),
                  color: Color.fromARGB(255, 42, 157, 143),
                  onPressed: (){},
                ),
              ),
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
              top: screenHeight * 0.43,
              child: SizedBox(
                height: screenHeight * 0.08,
                width: screenWidth * 0.2,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                  ),
                )
              )
            ),
            Positioned(
              top: screenHeight * 0.52,
              child: SizedBox(
                height: screenHeight * 0.08,
                width: screenWidth * 0.2,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Confirm Password"
                  ),
                )
              )
            ),
            Positioned(
              top: screenHeight * 0.61,
              child: SizedBox(
                height: screenHeight * 0.06,
                width: screenWidth * 0.095,
                child: RaisedButton(
                  child: Text(
                    "Sign up",
                  style: TextStyle(fontSize: screenWidth * 0.0115),
                  ),
                  color: Color.fromARGB(255, 42, 157, 143),
                  onPressed: (){},
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight * 0.1,
              child: Container(
                width: screenWidth * 0.15,
                height: screenHeight * 0.04,
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      color: Color.fromARGB(255, 42, 157, 143),
                    )
                  ),
                  onPressed: () {},
                  child: const Text("Already have an account?")
                ),
              )
            ),
          ]
        )
      ),
    );
  }
}
