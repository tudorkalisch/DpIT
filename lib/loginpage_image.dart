import 'package:flutter/material.dart';

class LoginPageImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 1,
        alignment: Alignment.topRight,
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/loginpageimage.png"),
              fit: BoxFit.cover
            )
          ),
        )
      ),
    );
  }
}