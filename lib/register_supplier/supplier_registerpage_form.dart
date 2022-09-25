import 'package:buildnow/apirelated/registeruser.dart';
import 'package:buildnow/apirelated/usertoregister.dart';
import 'package:buildnow/constants/constants.dart';
import 'package:flutter/material.dart';

import 'supplier_registerpage_logo.dart';


class SupplierRegisterPageForm extends StatelessWidget {
  late String? email, password, roleName;
  SupplierRegisterPageForm({Key? key,  this.email,  this.password,  this.roleName, this.screenWidth, this.screenHeight}) : super(key: key);
  final screenWidth;
  final screenHeight;
  final companyNameController = TextEditingController();
  final CUICodeController = TextEditingController();
  final countryOfResidenceController = TextEditingController();
  final cityController = TextEditingController();
  final telephoneNumberController = TextEditingController();
  final foundingDateController = TextEditingController();

  late Future<UserToRegister>? userToRegister; 

  register() {
    userToRegister = registerUser(email!, password!, roleName!, companyNameController.text, CUICodeController.text, countryOfResidenceController.text, cityController.text, telephoneNumberController.text, DateTime.parse(foundingDateController.text));
  } 

  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController(text: email);
    TextEditingController _password = TextEditingController(text: password);
    TextEditingController _roleName= TextEditingController(text: roleName);
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
                        color: Colors.black, 
                        fontSize: screenWidth * 0.0275, 
                        fontWeight: FontWeight.bold
                      ),
                      child: Text(
                        "Înregistrați-vă",
                        textAlign: TextAlign.center,
                      )
                    )
                  ),
                  SupplierRegisterPageLogo(screenHeight: screenHeight, screenWidth: screenWidth),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: DefaultTextStyle(
                style: TextStyle(
                  color: Colors.black, 
                  fontSize: screenWidth * 0.0135, 
                  fontWeight: FontWeight.w500
                ),
                child: Text(
                  "Deveniți un distribuitor!",
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: DefaultTextStyle(
                style: TextStyle(
                  color: Colors.black, 
                  fontSize: screenWidth * 0.0115
                ),
                child: Text(
                  "Înregistrați-vă ca distribuitor pentru o experiență mai bună!",
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
                        hintText: "Numele companiei"
                      ),
                      controller: companyNameController,
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Codul CUI",
                        
                      ),
                      controller: CUICodeController,
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Țara"
                      ),
                      controller: countryOfResidenceController,
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Oraș"
                      ),
                      controller: cityController,
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Telefon"
                      ),
                      controller: telephoneNumberController,
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
                  color: buttonColor,
                  onPressed: (){
                    register();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}