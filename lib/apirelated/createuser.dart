import 'dart:convert';

import 'user.dart';
import 'package:http/http.dart' as http;

Future<User> createUser(String email, String password,) async {
  final response = await http.post(
    Uri.parse('http://localhost:8080/api/auth/signin'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'username': email,
      'password': password,
    }),
  );

  if (response.statusCode == 200) {
    
    return User.fromJson(jsonDecode(response.body));
  } else {
    
    throw Exception('Failed to create user.');
  }
}