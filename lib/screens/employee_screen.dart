import 'package:api_integration_flutter/services/employee_services.dart';
import 'package:flutter/material.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Data"),
        actions: [
          IconButton(
              onPressed: () {
                EmployeeServices().getAllEmployeeData();
              },
              icon: Icon(Icons.refresh))
        ],
      ),
    );
  }
}
