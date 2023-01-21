import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class AssignedStudent extends StatelessWidget {
  static const String routeName = '/AssignedStudent';
  const AssignedStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text('Student Details'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/routeName');
            },
            icon: Icon(Icons.logout_rounded, color: buttonColor),
          ),
        ],
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
                    Text('Student Email'),
                    Text('Student Phone'),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 60,
                  width: 300,
                  color: containerColor,
                  child: const Center(
                      child: Text(
                    'Complain Box',
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              //print("object");
              // Navigator.pushNamed(context, StudentRegisteredCourse.routeName);
            },
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 60,
                  width: 300,
                  color: containerColor,
                  child: const Center(
                      child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
            ),
          ),
        ]),
      ), //------------------------------->need to change
    );
  }
}
