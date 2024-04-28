import 'dart:convert';

import 'package:http/http.dart' as http;

class EmployeeServices {
  String baseUrl = "https://reqres.in/api/";

  getAllEmployeeData() async {
    var response = await http.get(Uri.parse(baseUrl + "users?page=2"));
    if (response.statusCode == 200) {
      var data = response.body;
      var decodedData = jsonDecode(data);

      print(data);
    }
  }
}