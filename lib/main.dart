import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/student_provider.dart';
import 'screens/icode_verification_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StudentProvider(),
      child: MaterialApp(
        title: 'Student Login',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ICodeVerificationScreen(),
      ),
    );
  }
}
