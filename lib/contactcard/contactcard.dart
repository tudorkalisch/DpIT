import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart' as Constants;

import 'package:cupertino_icons/cupertino_icons.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 20),
        child: Container(
          width: double.infinity,
          height: 280,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Constants.blueGradientPath),
                fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 60,
                  left: 45,
                  child: Text(
                    "Contact:",
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )),
              Positioned(
                  top: 120,
                  left: 48,
                  child: Icon(
                    CupertinoIcons.envelope,
                    size: 34,
                    color: Colors.white,
                  )),
              Positioned(
                  top: 120,
                  left: 96,
                  child: Text(
                    "buildnowdpit@protonmail.com",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ))
            ],
          ),
        ));
  }
}
