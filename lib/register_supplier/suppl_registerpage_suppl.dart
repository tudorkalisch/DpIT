import 'package:flutter/material.dart';

import 'suppl_registerpage_form.dart';
import 'suppl_registerpage_image.dart';

class SupplRegisterPage extends StatelessWidget {
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
                    image: AssetImage("assets/registerpagegradient.png"),
                    fit: BoxFit.cover)),
            child: Center(
                child: Container(
                    constraints: BoxConstraints(minHeight: 350, minWidth: 665),
                    width: screenWidth * 0.61,
                    height: screenHeight * 0.85,
                    color: Colors.white,
                    child: Row(
                      children: [
                        SupplRegisterPageImage(),
                        Expanded(
                            flex: 1,
                            child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                color: Color.fromARGB(255, 42, 157, 143))),
                        SupplRegisterPageForm(
                            screenHeight: screenHeight,
                            screenWidth: screenWidth),
                      ],
                    )))));
  }
}