import 'package:flutter/material.dart';

class RegisterPageImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 90,
      child: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 1,
        alignment: Alignment.topRight,
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/registerpageimage.png"),
              fit: BoxFit.cover
            )
          ),
        )
      ),
    );
  }
}