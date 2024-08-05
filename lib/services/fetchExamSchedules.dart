// lib/services/exam_schedule_service.dart

import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/ExamSchedule.dart';


Future<List<ExamSchedule>> fetchExamSchedules() async {
  final response = await http.get(Uri.parse('https://ssapi.influxinfotech.in/ssapi/GetStudentExamSchedule?iCode=INFLUX&studentID=1618'));

  if (response.statusCode == 200) {
    List<dynamic> jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => ExamSchedule.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load exam schedules');
  }
}
