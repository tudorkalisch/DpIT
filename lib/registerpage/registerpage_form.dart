import 'dart:html';

import 'package:buildnow/apirelated/registeruser.dart';
import 'package:buildnow/apirelated/user.dart';
import 'package:buildnow/apirelated/usertoregister.dart';
import 'package:buildnow/loginpage/loginpage.dart';
import 'package:buildnow/register_supplier/supplier_registerpage.dart';
import 'package:buildnow/register_supplier/supplier_registerpage_form.dart';
import 'package:flutter/material.dart';

import 'registerpage_logo.dart';

import '../constants/constants.dart' as Constants;

import 'package:email_validator/email_validator.dart';

class RegisterPageForm extends StatefulWidget {
  final screenWidth;
  final screenHeight;
  const RegisterPageForm({Key? key, this.screenHeight, this.screenWidth}) : super(key: key);

  @override
  State<RegisterPageForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RegisterPageForm> {
  static const _baseOutlineColor = Color(0xffb9b9b9);

  final mailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  String roleName = "CLIENT";
  bool isSupplier = false;
  

  var _outlineBorderColorMail = _baseOutlineColor;
  var _outlineBorderColorPassword = _baseOutlineColor;
  var _outlineBorderColorConfirmPassword = _baseOutlineColor;

  Future<UserToRegister>? _userToRegister;

  bool _validateStructure(password) {
      RegExp regExp = new RegExp((Constants.passwordPattern));
      return regExp.hasMatch(password);
  }

  register() {
    // if (!_validateStructure(this.passwordController.text)) {
    //   setState(() {
    //     _outlineBorderColorPassword = Colors.red; 
    //   });
    // }
    // else {
    //   setState(() {
    //     _outlineBorderColorPassword = _baseOutlineColor;
    //   });
    // }
    
    if (!_validateStructure(this.confirmPasswordController.text)) {
      setState(() {
        _outlineBorderColorConfirmPassword = Colors.red; 
      });
    }
    else {
      setState(() {
        _userToRegister = registerUser(mailController.text, passwordController.text, roleName, null, null, null, null, null, null).then((value){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
            return value;
        });
        
      });
    }
    
    // if (!EmailValidator.validate(mailController.text)) {
    //   setState(() {
    //     _outlineBorderColorMail = Colors.red;
    //   });
    // }
    // else {
    //   setState(() {
    //     _outlineBorderColorMail = _baseOutlineColor;
    //   });
    // }
  }
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
            RegisterPageLogo(screenHeight: widget.screenHeight, screenWidth: widget.screenWidth),
            Positioned(
              top: widget.screenHeight * 0.07,
              child: DefaultTextStyle(
                style: TextStyle(color: Color(Constants.blueTextColor), fontSize: widget.screenWidth * 0.0275, fontWeight: FontWeight.bold),
                child: Text(
                  "Înregistrați-vă",
                  textAlign: TextAlign.center,
                )
              ) 
            ),
            Positioned(
              top: widget.screenHeight * 0.15,
              child: DefaultTextStyle(
                style: TextStyle(color: Color(Constants.blueTextColor), fontSize: widget.screenWidth * 0.0135, fontWeight: FontWeight.w500),
                child: Text(
                  "Bine ați venit!",
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Positioned(
              top: widget.screenHeight * 0.19,
              child: DefaultTextStyle(
                style: TextStyle(color: Color(Constants.blueTextColor), fontSize: widget.screenWidth * 0.0115),
                child: Text(
                  "Înregistrați-vă pentru o experiență mai bună!",
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Positioned(
              top: widget.screenHeight * 0.25,
              left: widget.screenWidth * 0.052,
              child: SizedBox(
                height: widget.screenHeight * 0.06,
                width: widget.screenWidth * 0.095,
                child: RaisedButton(
                  child: Text(
                    "Distribuitor",
                  style: TextStyle(fontSize: widget.screenWidth * 0.0115),
                  ),
                  color: Color(Constants.blueButtonColor),
                  onPressed: (){
                    roleName = "SUPPLIER";
                    setState(() {
                      isSupplier = true;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              top: widget.screenHeight * 0.25,
              left: widget.screenWidth * 0.155,
              child: SizedBox(
                height: widget.screenHeight * 0.06,
                width: widget.screenWidth * 0.095,
                child: RaisedButton(
                  child: Text(
                    "Client",
                  style: TextStyle(fontSize: widget.screenWidth * 0.0115),
                  ),
                  color: Color(Constants.blueButtonColor),
                  onPressed: (){
                    roleName = "CLIENT";
                  },
                ),
              ),
            ),
            Positioned(
              top: widget.screenHeight * 0.34,
              child: SizedBox(
                height: widget.screenHeight * 0.08,
                width: widget.screenWidth * 0.2,
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: _outlineBorderColorMail
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: _outlineBorderColorMail
                      )
                    ),
                    hintText: "E-mail",
                  ),
                  controller: mailController,
                )
              )
            ),
            Positioned(
              top: widget.screenHeight * 0.43,
              child: SizedBox(
                height: widget.screenHeight * 0.08,
                width: widget.screenWidth * 0.2,
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: _outlineBorderColorPassword
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: _outlineBorderColorPassword
                      )
                    ),
                    border: OutlineInputBorder(),
                    hintText: "Parolă",
                  ),
                  controller: passwordController,
                )
              )
            ),
            Positioned(
              top: widget.screenHeight * 0.52,
              child: SizedBox(
                height: widget.screenHeight * 0.08,
                width: widget.screenWidth * 0.2,
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                          color: _outlineBorderColorConfirmPassword
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: _outlineBorderColorConfirmPassword
                        )
                      ),
                    hintText: "Confirmă parola"
                  ),
                  controller: confirmPasswordController,
                )
              )
            ),
            Positioned(
              top: widget.screenHeight * 0.625,
              child: SizedBox(
                height: widget.screenHeight * 0.06,
                width: widget.screenWidth * 0.095,
                child: RaisedButton(
                  child: Text(
                    "Sign up",
                  style: TextStyle(fontSize: widget.screenWidth * 0.0115),
                  ),
                  color: Color(Constants.blueButtonColor),
                  onPressed: () {
                    if (isSupplier == true) {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SupplierRegisterPageForm(email: mailController.text, password: passwordController.text, roleName: roleName)));
                    }
                  },
                ),
              ),
            ),
            Positioned(
              bottom: widget.screenHeight * 0.1,
              child: Container(
                width: widget.screenWidth * 0.12,
                height: widget.screenHeight * 0.04,
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      color: Color(Constants.blueButtonColor),
                    )
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Aveți deja un cont?")
                ),
              )
            ),
          ]
        )
      ),
    );
  }
}