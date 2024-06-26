import 'dart:convert';

import 'package:api_integration_flutter/models/employee.dart';
import 'package:http/http.dart' as http;

class EmployeeServices {
  String baseUrl = "https://reqres.in/api/";

  getAllEmployeeData() async {
    List<Employee> allEmployees = [];
    try {
      var response = await http.get(Uri.parse(baseUrl + "users?page=2"));
      if (response.statusCode == 200) {
        var data = response.body;
        var decodedData = jsonDecode(data);
        var employees = decodedData['data'];

        // print(employees);

        for (var employee in employees) {
          Employee newEmployee = Employee.fromJson(employee);
          allEmployees.add(newEmployee);
        }

        print(allEmployees);
        return allEmployees;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
//recap
