// lib/screens/exam_schedule_screen.dart

import 'package:flutter/material.dart';
import '../models/ExamSchedule.dart';
import '../services/fetchExamSchedules.dart';



class ExamScheduleScreen extends StatefulWidget {
  const ExamScheduleScreen({super.key});

  @override
  _ExamScheduleScreenState createState() => _ExamScheduleScreenState();
}

class _ExamScheduleScreenState extends State<ExamScheduleScreen> {
  late Future<List<ExamSchedule>> futureExamSchedules;

  @override
  void initState() {
    super.initState();
    futureExamSchedules = fetchExamSchedules();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Exam Schedule",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white,fontFamily: "MainFont"),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    title: const Text("My Wards"),
                    content: const Text("Student 1618"), // Replace with actual batch ID
                    actions: [
                      TextButton(
                        child: const Text("OK"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.person),
            color: Colors.white,
          ),
        ],
      ),
      body: FutureBuilder<List<ExamSchedule>>(
        future: futureExamSchedules,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No data available'));
          }
          final examSchedules = snapshot.data!;

          return SingleChildScrollView(
            child: Center(
              child: Container(
                width: width - 50,
                margin: const EdgeInsets.only(top: 30.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Table(
                    defaultColumnWidth: const FixedColumnWidth(120.0),
                    border: TableBorder.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                    children: [
                      TableRow(
                        decoration:  BoxDecoration(
                          color: Colors.red[200],
                        ),
                        children: const [
                          Text(
                            'SUBJECT',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: "MainFont"
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'DATE',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: "MainFont"
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'DAY',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: "MainFont"
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      for (var exam in examSchedules)
                        TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Flexible(
                                child: Text(
                                  exam.noticeTitle,
                                  style: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,

                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Flexible(
                                child: Text(
                                  exam.noticeDate,
                                  style: const TextStyle(
                                    color: Colors.black45,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,

                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Flexible(
                                child: Text(
                                  exam.noticeDesc,
                                  style: const TextStyle(
                                    color: Colors.black45,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,

                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
