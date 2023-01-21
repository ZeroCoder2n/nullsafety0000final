import 'package:flutter/material.dart';
import 'package:nullsafety/pages/student_first_page/student_registered_course.dart';

import '../../utils/constants.dart';

class StudentDashboard extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    //final provider = Provider.of<UserProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            iconSize: 25,
            onPressed: () {
              // setLoginStatus(false).then((value)
              {
                // Navigator.pushReplacementNamed(context, LauncherPage.routeName);
              }
              ;
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 300,
                  width: 350,
                  color: containerColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Student Name'),
                      Text('Student Id'),
                      Text('Student Email'),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                //print("object");
                Navigator.pushNamed(context, StudentRegisteredCourse.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 60,
                    width: 300,
                    color: containerColor,
                    child: const Center(
                      child: Text(
                        'Course 1',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                //print("object");
                Navigator.pushNamed(context, StudentRegisteredCourse.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 60,
                    width: 300,
                    color: containerColor,
                    child: const Center(
                      child: Text(
                        'Course 2',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                //print("object");
                Navigator.pushNamed(context, StudentRegisteredCourse.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 60,
                    width: 300,
                    color: containerColor,
                    child: const Center(
                      child: Text(
                        'Course 3',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
