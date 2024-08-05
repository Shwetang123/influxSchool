import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/Attendance.dart';


Future<Attendance> fetchAttendance() async {
  final response = await http.get(Uri.parse('https://ssapi.influxinfotech.in/ssapi/GetStudentAttendance?iCode=INFLUX&studentID=1618'));

  if (response.statusCode == 200) {
    return Attendance.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load attendance');
  }
}