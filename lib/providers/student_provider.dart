import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/student.dart';

class StudentProvider with ChangeNotifier {
  List<StudentData> students = [];
  String iCode = "";

  Future<bool> verifyICode(String iCode) async {
    // This is a dummy verification for the example.
    // Replace with actual API endpoint if available.
    if (iCode.toUpperCase() == 'INFLUX' ) {
      this.iCode = iCode;
      notifyListeners();
      return true;
    }
    return false;
  }

  Future<bool> login(String userId, String password) async {
    final response = await http.get(
      Uri.parse('https://ssapi.influxinfotech.in/ssapi/GetStudentData?iCode=$iCode&uID=$userId&uPass=$password'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['msg'] == 'SUCCESS') {
        students = (data['students'] as List).map((i) => StudentData.fromJson(i)).toList();
        notifyListeners();
        return true;
      }
    }
    return false;
  }
}
