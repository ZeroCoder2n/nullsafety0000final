import 'package:flutter/material.dart';
import 'package:nullsafety/pages/Teacher_page/assigned_student_details.dart';

import '../../utils/constants.dart';

class TeacherAssignedCourse extends StatelessWidget {
  static const String routeName = '/TeacherAssignedCourse';
  const TeacherAssignedCourse({Key? key}) : super(key: key);

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
                      Text('Course Details-------'),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                //print("object");
                Navigator.pushNamed(context, AssignedStudent.routeName);
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
                        'Student 1',
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
                Navigator.pushNamed(context, AssignedStudent.routeName);
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
                        'Student 2',
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
                Navigator.pushNamed(context, AssignedStudent.routeName);
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
                        'Student 3',
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
                Navigator.pushNamed(context, AssignedStudent.routeName);
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
                        'Student 4',
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
                Navigator.pushNamed(context, AssignedStudent.routeName);
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
                        'Student 5',
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
