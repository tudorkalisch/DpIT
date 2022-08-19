import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CategoryList> {
  var _dropdownValue = "Categorii";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Center(
        child: DropdownButton<String>(
          value: _dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              _dropdownValue = newValue!;
            });
          },
          underline: Container(),
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          items: [
            "Categorii",
            "Paravane",
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String> (
              value: value,
              child: Text(value),
            );
          }).toList(),
        )
      )
    );
  }
}