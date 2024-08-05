import 'package:flutter/material.dart';

import '../models/studentid.dart';

import '../services/fetchStudents.dart';
import '../widgets/HeadProfile.dart';

class StudentListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Class Mates",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontFamily: "MainFont"),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          HeadProfile(),
          Expanded(
            child: FutureBuilder<List<Student>>(
              future: ApiService.fetchStudents(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text('No students found'));
                } else {
                  return GridView.builder(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      Student student = snapshot.data![index];
                      return Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: student.studentPhotoPath != null
                                  ? NetworkImage(student.studentPhotoPath!)
                                  : const AssetImage('assets/profile.jpg')
                              as ImageProvider,
                              radius: 90,
                            ),
                            //const SizedBox(height: 5),
                            Text(student.SName ?? 'Unknown',
                                style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: "MainFont",
                                    fontWeight: FontWeight.w600
                                )),
                          ],
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
