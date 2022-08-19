import 'package:buildnow/constants/constants.dart';
import 'package:flutter/material.dart';

class SupplierRegisterPageImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 90, 
      child: FractionallySizedBox( 
        widthFactor: 1,
        heightFactor: 1,
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(registerPageImagePath),
              fit: BoxFit.cover
            )
          ),
        )
      ),
    );
  }
}