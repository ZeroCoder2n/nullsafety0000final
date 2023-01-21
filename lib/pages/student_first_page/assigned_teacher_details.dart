import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class AssignedTeacher extends StatefulWidget {
  static const String routeName = '/AssignedTeacher';
  const AssignedTeacher({Key? key}) : super(key: key);

  @override
  State<AssignedTeacher> createState() => _AssignedTeacherState();
}

class _AssignedTeacherState extends State<AssignedTeacher> {
  final txtController = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text('Teacher Details'),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.pushNamed(context, routeName);
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
                    Text('Teacher Name'),
                    Text('Teacher Email'),
                    Text('Teacher Phone'),
                  ],
                ),
              ),
            ),
          ),
          /*InkWell(
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
          ),*/
          const Text(
            'Comment Box',
            style: TextStyle(fontSize: 24),
          ),
          TextField(
            focusNode: focusNode,
            maxLines: 3,
            controller: txtController,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
          TextButton(
            onPressed: () {
              focusNode.unfocus();
            },
            child: const Text('SUBMIT'),
          ),
          /*InkWell(
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
          )*/
        ]),
      ),
      //------------------------------->need to change
    );
  }
}
