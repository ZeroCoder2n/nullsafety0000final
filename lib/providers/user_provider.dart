import 'package:flutter/cupertino.dart';

import '../db/db_helper.dart';
import '../models/user_model.dart';

class UserProvider extends ChangeNotifier {
  late UserModel _userModel;
  late UserModel? currentUser;

  UserModel get userModel => _userModel;

  Future<int?> firstOpen() {
    return DbHelper.firstOpen();
  }

  Future<UserModel?> getUserByEmail(String email) {
    return DbHelper.getUserByEmail(email);
  }

  Future<void> getUserById(int id) async {
    _userModel = await DbHelper.getUserById(id);
  }

  Future<int> insertNewUser(UserModel userModel) {
    return DbHelper.insertUser(userModel);
  }
}
