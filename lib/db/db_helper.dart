import 'package:nullsafety/models/course_model.dart';
import 'package:nullsafety/models/user_model.dart';
import 'package:nullsafety/utils/constants.dart';
import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart';

// $tblUserColDepartment text,

class DbHelper {
  static const String createTableUser = '''create table $tableUser(
  $tblUserColId integer primary key autoincrement,
  $tblUserColEmail text,
  $tblUserColPassword text,
  $tblUserColName text,
  $tblUserColPhone text,
  $tblUserColTeacher integer,
  $tblUserColAdmin integer)''';

  static const String createTableCourse = '''create table $tableCourse(
  $tblCourseColId integer primary key autoincrement,
  $tblCourseColName text,
  $tblCourseColDescription text)''';

  static const String createTableEnrolStudent =
      '''create table $tableEnrolStudent(
  $studentId integer,
  $tblCourseColId integer)''';

  static const String createTableEnrolTeacher =
      '''create table $tableEnrolTeacher(
  $teacherId integer,
  $tblCourseColId integer)''';

  static Future<Database> open() async {
    final rootPath = await getDatabasesPath();
    final dbPath = path.join(rootPath, 'cm_db');

    return openDatabase(dbPath, version: 1, onCreate: (db, version) async {
      await db.execute(createTableUser);
      await db.execute(createTableCourse);
      await db.execute(createTableEnrolStudent);
      await db.execute(createTableEnrolTeacher);
    }, onUpgrade: (db, oldVersion, newVersion) async {
      if (newVersion == 2) {
        db.execute(
            'alter table $tableUser add column $tblUserColAdmin integer');
      }
    });
  }

  static Future<int?> firstOpen() async {
    await open();
    return null;
  }

  static Future<int> insertUser(UserModel userModel) async {
    final db = await open();
    return db.insert(tableUser, userModel.toMap());
  }

  static Future<UserModel?> getUserByEmail(String email) async {
    final db = await open();
    final mapList = await db
        .query(tableUser, where: '$tblUserColEmail = ?', whereArgs: [email]);
    if (mapList.isEmpty) return null;
    return UserModel.fromMap(mapList.first);
  }

  static Future<UserModel> getUserById(int id) async {
    final db = await open();
    final mapList = await db.query(
      tableUser,
      where: '$tblUserColId = ?',
      whereArgs: [id],
    );
    return UserModel.fromMap(mapList.first);
  }

  static Future<int> insertCourse(CourseModel courseModel) async {
    final db = await open();
    return db.insert(tableCourse, courseModel.toMap());
  }

  static Future<int> insertEnrolStudent(CourseModel courseModel) async {
    final db = await open();
    return db.insert(tableCourse, courseModel.toMap());
  }

  static Future<int> insertEnrolTeacher(CourseModel courseModel) async {
    final db = await open();
    return db.insert(tableCourse, courseModel.toMap());
  }
}
