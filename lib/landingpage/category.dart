import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final categoryName;

  const Category({Key? key, this.categoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: double.infinity,
          width: 2,
          child: Divider(height: 2, thickness: 28, color: Color(0xffd6d6d6)),
        ),
        Container(
          height: double.infinity,
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                this.categoryName,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)
              ),
            )
          )
        )
      ]
    );
  }
}