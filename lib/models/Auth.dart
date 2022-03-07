import 'dart:convert';

import 'package:http/http.dart' as http;

class Auth {
  // Sign in a seller account
  static Future<Map<String, dynamic>> signInSeller(
      {String? email, String? password}) async {
    var url = Uri.parse('http://10.0.2.2:5050/auth/signin-seller');
    var response = await http.post(url,
        body: jsonEncode({"email": email, "password": password}),
        headers: {'Content-Type': 'application/json'});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    return jsonDecode(response.body);
  }
}
