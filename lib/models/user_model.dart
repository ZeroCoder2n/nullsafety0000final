const String tblUserColId = 'user_id';
const String tblUserColEmail = 'email';
const String tblUserColPassword = 'password';
const String tblUserColName = 'name';
const String tblUserColPhone = 'phone_no';
const String tblUserColAdmin = 'admin';
const String tblUserColTeacher = 'teacher';
const String tblUserColDepartment = 'department';

const String tableUser = 'user_table';

class UserModel {
  int? userId;
  String email;
  String password;
  String name;
  String phoneNo;
  // String dept;

  bool isAdmin;
  bool isTeacher;

  UserModel({
    this.userId,
    required this.email,
    required this.password,
    required this.name,
    required this.phoneNo,
    required this.isAdmin,
    required this.isTeacher,
    // required this.dept,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      tblUserColEmail: email,
      tblUserColPassword: password,
      tblUserColPhone: phoneNo,
      tblUserColAdmin: isAdmin ? 1 : 0,
      tblUserColTeacher: isTeacher ? 1 : 0,
      // tblUserColDepartment: dept,
    };
    if (userId != null) {
      map[tblUserColId] = userId;
    }
    return map;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(
        userId: map[tblUserColId],
        email: map[tblUserColEmail],
        password: map[tblUserColPassword],
        name: map[tblUserColName],
        phoneNo: map[tblUserColPhone],
        isAdmin: map[tblUserColAdmin] == 0 ? false : true,
        isTeacher: map[tblUserColTeacher] == 0 ? false : true,
        // dept: map[tblUserColDepartment],
      );
}
