import 'dart:convert';

import 'package:buildnow/apirelated/usertoregister.dart';

import 'user.dart';
import 'package:http/http.dart' as http;

Future<UserToRegister> registerUser(String email, String password, String roleName, String? companyName, String? CUI, String? countryOfResidence, String? city, String? telephoneNumber, DateTime? foundingDate) async {
  final response = await http.post(
    Uri.parse('http://localhost:8080/users/registration'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'username': email,
      'password': password,
      'roleName': roleName
    }),
  );

  if (response.statusCode == 200) {
    
    return UserToRegister.fromJson(jsonDecode(response.body));
  } else {
    
    throw Exception('Failed to create album.');
  }
}