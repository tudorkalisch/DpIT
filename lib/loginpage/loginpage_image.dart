import 'package:flutter/material.dart';

class LoginPageImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 90, //avem valori asa de mari aici pentru a face bara colorata din mijloc mica
      child: FractionallySizedBox( //din ceva motiv cu Container simplu nu afisa imaginea si a ramas FractionallySizedBox, dar voi reveni aici
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