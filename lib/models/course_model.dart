const String tblCourseColId = 'course_id';
const String tblCourseColName = 'Name';
const String tblCourseColDescription = 'Description';
const String tableCourse = 'course_table';

class CourseModel {
  int? courseId;
  String name;
  String description;

  CourseModel({
    this.courseId,
    required this.name,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      tblCourseColName: name,
      tblCourseColDescription: description,
    };
    if (courseId != null) {
      map[tblCourseColId] = courseId;
    }
    return map;
  }

  factory CourseModel.fromMap(Map<String, dynamic> map) => CourseModel(
        courseId: map[tblCourseColId],
        name: map[tblCourseColName],
        description: map[tblCourseColDescription],
      );
}
