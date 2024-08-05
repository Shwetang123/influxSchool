import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:loginstudent/screens/MenuItemScreen.dart';
import 'package:text_scroll/text_scroll.dart';
import '../widgets/HeadProfile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final advancedDrawerController = AdvancedDrawerController();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final height = size.width;
    final width = size.width;

    return AdvancedDrawer(
        openRatio: 0.75,
        openScale: .9,
        animationCurve: Curves.easeInOut,
        controller: advancedDrawerController,
        backdropColor: Colors.white,
        childDecoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        drawer: const SafeArea(
          child: MenuItemScreen(),
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                DrawerControl();
              },
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    showStudentInfoPopup(context);
                  },
                  icon: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ))
            ],
            title:const Text(
              "HOME",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: "MainFont"),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,

              children: [
                const HeadProfile(),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  "PARENT DASHBOARD",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      fontFamily: "MainFont"),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width / 4,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.red,
                          //shape:
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text(
                                'Reg. No.',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: "MainFont"),
                              ),
                              Text(
                                '1606',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "MainFont"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Card(
                        elevation: 15,
                        shape: const StadiumBorder(
                          side: BorderSide(
                            color: Colors.red,
                            width: 1.0,
                          ),
                        ),
                        color: Colors.red[50],
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.money,
                                color: Colors.green,
                                size: 40,
                              ),
                              SizedBox(width: 25),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Fees',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "MainFont"),
                                  ),
                                  Text(
                                    '₹ 19900',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "MainFont"),
                                  ),
                                  Text(
                                    'Dues Remaining',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontFamily: "MainFont"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Card(
                        elevation: 10,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Date Of Birth',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "MainFont",
                                          fontWeight: FontWeight.w600)),
                                  Text('02-04-2016',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "MainFont")),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Divider(),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Mother\'s Name',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "MainFont",
                                          fontWeight: FontWeight.w600)),
                                  Text('Mother 1606',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "MainFont")),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Divider(),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Father\'s Name',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "MainFont")),
                                  Text('Father 1606',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "MainFont")),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Divider(),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Mobile Number',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "MainFont")),
                                  Text('8909248671',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "MainFont")),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Divider(),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Address',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "MainFont")),
                                  Text('Agra',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "MainFont")),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 35),
                      Container(
                        //margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4.0,
                                offset: Offset(5, 5),
                              )
                            ]),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 111.9),
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                              ),
                              child: const Text(
                                "IMPORTANT NOTICES",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    fontFamily: "MainFont"),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(16),
                              child: TextScroll(
                                ' Spam refers to messages which are unsolicited and unwanted. Usually, spam texts are not coming from another phone. They mainly originate from a computer and are sent to your phone via an email address or instant messaging account. Because they are sent online, they are cheap and easy for scammers to send.',
                                mode: TextScrollMode.endless,
                                velocity:
                                Velocity(pixelsPerSecond: Offset(100, 0)),
                                delayBefore: Duration(milliseconds: 500),
                                numberOfReps: 50,
                                pauseBetween: Duration(milliseconds: 50),
                                style: TextStyle(color: Colors.black,fontFamily: "MainFont"),
                                textAlign: TextAlign.right,
                                selectable: true,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

void DrawerControl() {
  advancedDrawerController.showDrawer();
}
void showStudentInfoPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const AlertDialog(
        title: Text('My Wards',style: TextStyle(
            fontFamily: "MainFont",
            fontSize: 24,
            fontWeight: FontWeight.bold
        ),),
        content: Text('Student 1856',style: TextStyle(
            fontFamily: "MainFont",
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.grey
        ),),

      );
    },
  );
}
