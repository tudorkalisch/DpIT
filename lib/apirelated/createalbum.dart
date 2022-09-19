import 'dart:convert';

import 'albumclass.dart';
import 'package:http/http.dart' as http;

Future<Album> createAlbum(String email, String password) async {
  final response = await http.post(
    Uri.parse('jdbc:postgresql://localhost:5432/postgres/api/auth/signin'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': email,
      'password': password,
      //'roleName': roleName,
    }),
  );

  if (response.statusCode == 201) {
    
    return Album.fromJson(jsonDecode(response.body));
  } else {
    
    throw Exception('Failed to create album.');
  }
}