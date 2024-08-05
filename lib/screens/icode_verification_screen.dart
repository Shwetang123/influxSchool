import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/student_provider.dart';
import 'login_screen.dart';

class ICodeVerificationScreen extends StatefulWidget {
  @override
  _ICodeVerificationScreenState createState() =>
      _ICodeVerificationScreenState();
}

class _ICodeVerificationScreenState extends State<ICodeVerificationScreen> {
  final TextEditingController icodeController = TextEditingController();
  bool isLoading = false;
  bool isError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'EduSchool App',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MainFont',
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 13, right: 13, top: 20),
                child: const Text(
                  'An App for parents to have the maximum information about their child and school activities',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'MainFont'),
                ),
              ),
              const SizedBox(height: 20),
              CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.white,
                  child: Image.asset("assets/logo1.png")

              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: <Widget>[
                    const Text(
                      'Enter Institute Code',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        //fontFamily: 'MainFont'
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Please enter the institute code provided by your school to continue.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'MainFont'),
                    ),
                    const SizedBox(height: 40),
                    TextField(
                      controller: icodeController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'ENTER CODE',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 30),
                    isLoading
                        ? CircularProgressIndicator()
                        : ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          isLoading = true;
                          isError = false;
                        });

                        String iCode = icodeController.text;

                        if (await Provider.of<StudentProvider>(context,
                            listen: false)
                            .verifyICode(iCode)) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(
                            content: Text(
                              'Successfully',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),
                            backgroundColor: Colors.white,
                          ));
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        } else {
                          setState(() {
                            isError = true;
                          });
                        }

                        setState(() {
                          isLoading = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // rectangle shape with border radius
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 90, vertical: 15),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    if (isError)
                      Column(
                        children: [
                          Text(
                            'Something went wrong',
                            style: TextStyle(color: Colors.red),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                isError = false;
                              });
                            },
                            child: Text(
                              'Retry',
                              style: TextStyle(
                                  fontFamily: 'MainFont',
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
