import 'package:flutter/material.dart';
import 'package:nullsafety/pages/student_first_page/assigned_teacher_details.dart';

import '../../utils/constants.dart';

class StudentRegisteredCourse extends StatelessWidget {
  static const String routeName = '/StudentRegisteredCourse';
  const StudentRegisteredCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text('Course Details'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/routeName');
            },
            icon: Icon(Icons.logout_rounded, color: buttonColor),
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
                      Text('Course Details----------'),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                //print("object");
                Navigator.pushNamed(context, AssignedTeacher.routeName);
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
                        'Course Teacher 1',
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
