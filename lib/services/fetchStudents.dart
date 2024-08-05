import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/studentid.dart';



class ApiService {
  static const String url = 'https://ssapi.influxinfotech.in/ssapi/GetStudentBatchMates?iCode=INFLUX&studentID=1618';

  static Future<List<Student>> fetchStudents() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Student> students = body.map((dynamic item) => Student.fromJson(item)).toList();
      return students;
    } else {
      throw Exception('Failed to load students');
    }
  }
}


