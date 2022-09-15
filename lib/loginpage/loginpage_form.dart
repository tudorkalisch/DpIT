import 'package:buildnow/apirelated/albumclass.dart';
import 'package:buildnow/apirelated/createalbum.dart';
import 'package:flutter/material.dart';

import './loginpage_logo.dart';

import '../constants/constants.dart' as Constants;

import 'package:email_validator/email_validator.dart';

import 'package:flutter/cupertino.dart';

import '../registerpage/registerpage.dart';

import 'package:http/http.dart' as http;

class LoginPageForm extends StatefulWidget {
  final screenWidth;
  final screenHeight;
  const LoginPageForm({Key? key, this.screenHeight, this.screenWidth})
      : super(key: key);

  @override
  State<LoginPageForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginPageForm> {
  static const _baseOutlineColor = Color(0xffb9b9b9);

  var _outlineColorMail = _baseOutlineColor;
  var _outlineColorPassword = _baseOutlineColor;

  bool _hiddenPassword = false;

  final mailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<Album>? _futureAlbum;

  hidePassword() {
    final passwordText = passwordController.text;
    setState(() {
      _hiddenPassword = !_hiddenPassword;
    });
    passwordController.text = passwordText;
  }

  bool _validateStructure(String userPassword) {
      RegExp regExp = new RegExp((Constants.passwordPattern));
      return regExp.hasMatch(userPassword);
    }

  logIn() {
      if (!_validateStructure(passwordController.text)) {
        setState(() {
          _outlineColorPassword = Colors.red;
        });
      }
      else {
        setState(() {
          _outlineColorPassword = _baseOutlineColor;
        });
      }
      // if(!EmailValidator.validate(mailController.text)) {
      //   setState(() {
      //     _outlineColorMail = Colors.red;
      //   });
      // }
      // else {
      //   setState(() {
      //     _outlineColorMail = _baseOutlineColor;
      //   });
      // }
      if(_validateStructure(passwordController.text)) {
        setState(() {
          _futureAlbum = createAlbum(mailController.text, passwordController.text);
          
        });
        
      }

  }

  @override
  Widget build(BuildContext context) {

    return Expanded(
      flex: 90,
      child: FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 1,
          alignment: Alignment.topLeft,
          child: Stack(alignment: Alignment.center, children: [
            LoginPageLogo(
                screenHeight: widget.screenHeight,
                screenWidth: widget.screenWidth),
            Positioned(
                top: widget.screenHeight * 0.12,
                child: DefaultTextStyle(
                    style: TextStyle(
                        color: Color(Constants.logoBlue),
                        fontSize: Constants.titleFontSize,
                        fontWeight: FontWeight.bold),
                    child: Text(
                      "Log In",
                      textAlign: TextAlign.center,
                    ))),
            Positioned(
                top: widget.screenHeight * 0.21,
                child: DefaultTextStyle(
                  style: TextStyle(
                      color: Color(Constants.logoBlue),
                      fontSize: Constants.subtitleFontSize,
                      fontWeight: FontWeight.w500),
                  child: Text(
                    "Bine ați venit!",
                    textAlign: TextAlign.center,
                  ),
                )),
            Positioned(
                top: widget.screenHeight * 0.25,
                child: DefaultTextStyle(
                  style: TextStyle(
                      color: Color(Constants.logoBlue),
                      fontSize: Constants.secondSubtitleFontSize),
                  child: Text(
                    "Intrați în cont",
                    textAlign: TextAlign.center,
                  ),
                )),
            Positioned(
                top: widget.screenHeight * 0.34,
                child: SizedBox(
                    height: widget.screenHeight * 0.08,
                    width: widget.screenWidth * 0.2,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:  _outlineColorMail)
                            ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: _outlineColorMail)),
                        hintText: "E-mail",
                      ),
                      enableSuggestions: false,
                      autocorrect: false,
                      controller: mailController,
            ))),
            Positioned(
              top: widget.screenHeight * 0.41,
              child: Visibility(
                child: Text(
                  "E-mail-ul trebuie să fie valid!",
                  style: TextStyle(color: Colors.red),
                ),
                visible: _outlineColorMail == Colors.red,
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
                              borderSide: BorderSide(color: _outlineColorPassword)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: _outlineColorPassword)),
                          hintText: "Parolă",
                          suffixIcon: IconButton(
                            onPressed: hidePassword,
                            icon: _hiddenPassword ? 
                            Icon(CupertinoIcons.eye_slash_fill, color: Color(Constants.gradientBaseGreen))
                            :
                            Icon(CupertinoIcons.eye_fill, color: Color(Constants.gradientBaseGreen))
                          )
                          ),
                      obscureText: _hiddenPassword,
                      enableSuggestions: false,
                      autocorrect: false,
                      controller: passwordController,
            ))),
            Positioned(
              top: widget.screenHeight * 0.52,
              child: Visibility(
                child: Text(
                  "Parola nu este destul de puternică!",
                  style: TextStyle(color: Colors.red),
                ),
                visible: _outlineColorPassword == Colors.red,
              )
            ),
            Positioned(
                bottom: widget.screenHeight * 0.1,
                child: Container(
                  width: widget.screenWidth * 0.1,
                  height: widget.screenHeight * 0.04,
                  child: TextButton(
                      style: TextButton.styleFrom(primary: Colors.blue),
                      onPressed: () {},
                      child: const Text("Ați uitat parola?")),
                )),
            Positioned(
                bottom: widget.screenHeight * 0.19,
                left: widget.screenWidth * 0.05,
                child: Container(
                    width: widget.screenWidth * 0.095,
                    height: widget.screenHeight * 0.07,
                    color: Color(Constants.gradientBaseGreen),
                    child: TextButton(
                        style: TextButton.styleFrom(
                            primary: Colors.black,
                            textStyle: TextStyle(fontSize: 18)
                        ),
                        onPressed: logIn,
                        child: const Text("Log in")))),
            Positioned(
                bottom: widget.screenHeight * 0.19,
                right: widget.screenWidth * 0.05,
                child: Container(
                    width: widget.screenWidth * 0.095,
                    height: widget.screenHeight * 0.07,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(Constants.gradientBaseGreen),
                            width: 3)),
                    child: TextButton(
                        style: TextButton.styleFrom(
                            primary: Colors.black,
                            textStyle: TextStyle(fontSize: 18)
                          ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterPage()));
                        },
                        child: const Text("Creați-vă un cont"))))
          ])),
    );
  }
}
