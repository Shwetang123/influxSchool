import 'package:flutter/material.dart';

import 'package:loginstudent/screens/ExamScheduleScreen.dart';
import 'package:loginstudent/screens/GatePassScreen.dart';
import 'AttendanceScreen.dart';
import 'DefaultScreen.dart';
import 'MyClassMatesScreen.dart';



class MenuItemScreen extends StatelessWidget {
  const MenuItemScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 25,
              ),
              CircleAvatar(
                radius: 30,
                child: Image.asset(
                  "assets/logo1.png",
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              const Flexible(
                child: Text(
                  "Edu Influx School",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: "MainFont"
                  ),
                ),
              )
            ],
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text(
              'Home',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.school),
            title: const Text(
              'My School',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.notes),
            title: Text(
              'Notice Board',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.video_call),
            title: const Text(
              'online Class',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: const Text(
              'My Attendance',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AttendanceScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.currency_rupee),
            title: Text(
              'Fees',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.menu_book),
            title: Text(
              'Academics',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.menu_book),
            title: Text(
              'Homeworks',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.menu_book),
            title: Text(
              'Syllabus',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.menu_book),
            title: Text(
              'Assignments',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.download),
            title: Text(
              'My Downloads',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo),
            title: Text(
              'Albums',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.video_camera_front),
            title: Text(
              'Video',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.video_camera_front),
            title: Text(
              'Study Videos',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: Text(
              'My Class Mates',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StudentListScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.man),
            title: Text(
              'My Teachers',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: Text(
              'Time Table',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: Text(
              "My Messages",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: Text(
              'Exam Schedule',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExamScheduleScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: Text(
              'Monthly Planner',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.newspaper),
            title: Text(
              'Leave Application',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.menu_book),
            title: Text(
              'Student Book',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.local_post_office_outlined),
            title: Text(
              'Suggestion',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.car_repair_sharp),
            title: Text(
              'Gate Pass',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GatePass()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: Text(
              'Help & Support',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.star_rate),
            title: Text(
              'Rate Us',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: Text(
              'Logout',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "MainFont"
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
