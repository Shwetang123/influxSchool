import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/Attendance.dart';
import '../services/fetchAttendance.dart';

class AttendanceScreen extends StatefulWidget {
  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  late Future<Attendance> futureAttendance;

  @override
  void initState() {
    super.initState();
    futureAttendance = fetchAttendance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Attendance',style: TextStyle(
            color: Colors.white,
            fontFamily: "MainFont"
        ),),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: FutureBuilder<Attendance>(
        future: futureAttendance,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final attMonth = snapshot.data!.attMonths?.first;
            if (attMonth == null) {
              return const Center(child: Text('No attendance data available'));
            }
            return Column(
              children: [
                TableCalendar(
                  firstDay: DateTime.utc(2024, 1, 1),
                  lastDay: DateTime.utc(2024, 12, 31),
                  focusedDay: DateTime.now(),
                  calendarBuilders: CalendarBuilders(
                    defaultBuilder: (context, day, focusedDay) {
                      bool isPresent = attMonth.entries?.any((entry) =>
                      entry.atDate == day && entry.atStatus == AtStatus.PRESENT) ?? false;
                      bool isAbsent = attMonth.entries?.any((entry) =>
                      entry.atDate == day && entry.atStatus == AtStatus.ABSENT) ?? false;

                      return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: isPresent ? Colors.green : isAbsent ? Colors.red : null,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '${day.day}',
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text('Absent'),
                          Text('${attMonth.totalAbsentDays}'),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('Present'),
                          Text('${attMonth.totalPresentDays}'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}