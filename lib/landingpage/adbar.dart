import 'package:flutter/material.dart';

import '../constants/constants.dart' as Constants;

class AdBar extends StatelessWidget {
  const AdBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      color: Color(0xff176171)
    );
  }
}