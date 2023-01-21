import 'package:flutter/material.dart';
import 'package:nullsafety/pages/Teacher_page/assigned_course_details.dart';
import 'package:nullsafety/pages/Teacher_page/assigned_student_details.dart';
import 'package:nullsafety/pages/Teacher_page/teacher_dashboard.dart';
import 'package:nullsafety/pages/admin/add_user.dart';
import 'package:nullsafety/pages/admin/admin_dashboard.dart';
import 'package:nullsafety/pages/admin/manage_user.dart';
import 'package:nullsafety/pages/launcher_page.dart';
import 'package:nullsafety/pages/login_page.dart';
import 'package:nullsafety/pages/student_first_page/assigned_teacher_details.dart';
import 'package:nullsafety/pages/student_first_page/student_dashboard.dart';
import 'package:nullsafety/pages/student_first_page/student_registered_course.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.routeName,
      routes: {
        StudentDashboard.routeName: (context) => StudentDashboard(),
        StudentRegisteredCourse.routeName: (context) =>
            const StudentRegisteredCourse(),
        AssignedTeacher.routeName: (context) => const AssignedTeacher(),
        TeacherDashboard.routeName: (context) => const TeacherDashboard(),
        TeacherAssignedCourse.routeName: (context) =>
            const TeacherAssignedCourse(),
        AssignedStudent.routeName: (context) => const AssignedStudent(),
        LoginPage.routeName: (context) => const LoginPage(),
        LauncherPage.routeName: (context) => const LauncherPage(),
        AdminDashboard.routeName: (context) => const AdminDashboard(),
        ManageUser.routeName: (context) => const ManageUser(),
        AddUser.routeName: (context) => const AddUser(),
      },
    );
  }
}
