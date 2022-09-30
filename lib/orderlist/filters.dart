// import 'package:flutter/material.dart';
// import 'constantsforfilters.dart';

// class SettingsForm extends StatefulWidget {
//   @override
//   _SettingsFormState createState() => _SettingsFormState();
// }

// class _SettingsFormState extends State<SettingsForm> {
//   final _formKey = GlobalKey<FormState>();
//   final List<String> distribuitori = [
//     'Distribuitor',
//     'Dedeman',
//     'Leroy Merlin',
//     'Brico Depot'
//   ];
//   String _currentName;
//   String _currentSupplier;
//   int _currectStrength;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:  Form(
//         key: _formKey,
//         child: Column(children: <Widget>[
//           Text('Distribuitor'),
//           SizedBox(height: 20,)
//           TextFormField(
//             decoration: textInputDecoration,
//             validator: (val) => val.isEmpty ? 'Distribuitor' : null,
//             onChanged: (val) => SetState(() => _currentName = val),
//           )
//         ]),
//       )
//     );
//   }
// }
