import 'package:flutter/material.dart';

import 'suppl_registerpage_logo.dart';

class SupplRegisterPageForm extends StatelessWidget {
  final screenWidth;
  final screenHeight;

  SupplRegisterPageForm({this.screenWidth, this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 90,
      child: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 1,
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    child: DefaultTextStyle(
                      style: TextStyle(
                        color: Color.fromARGB(255, 27, 21, 18), 
                        fontSize: screenWidth * 0.0275, 
                        fontWeight: FontWeight.bold
                      ),
                      child: Text(
                        "Register",
                        textAlign: TextAlign.center,
                      )
                    )
                  ),
                  SupplRegisterPageLogo(screenHeight: screenHeight, screenWidth: screenWidth),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: DefaultTextStyle(
                style: TextStyle(
                  color: Color.fromARGB(255, 27, 21, 18), 
                  fontSize: screenWidth * 0.0135, 
                  fontWeight: FontWeight.w500
                ),
                child: Text(
                  "Become a supplier!",
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: DefaultTextStyle(
                style: TextStyle(
                  color: Color.fromARGB(255, 27, 21, 18), 
                  fontSize: screenWidth * 0.0115
                ),
                child: Text(
                  "Please register as a supplier for a better experience.",
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 20, 40, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Name of the Company"
                      ),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Unic code"
                      ),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Country"
                      ),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "City"
                      ),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Official phone number"
                      ),
                    )
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                width: 150,
                height: 50,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 30),
                child: RaisedButton(
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: screenWidth * 0.0115,
                      color: Colors.white
                    ),
                  ),
                  color: Color.fromARGB(255, 42, 157, 143),
                  onPressed: (){},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}