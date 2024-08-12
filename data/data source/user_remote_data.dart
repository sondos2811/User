import 'dart:convert';
import '../../core/data/users/data.dart';
import '../../core/mixins.dart';
import '../../domain/entity/user.dart';

class UserRemoteData with GenerateId <User>, UsersData {
  List<dynamic> data = jsonDecode(UsersData.users);
  List<User> getAllUsers() {
    return data.map((user) => User.fromJson(user)).toList();
  }

  User getUsers(int id) {
    return getAllUsers().firstWhere((element) => element.id == id);
  }

  void addUser(User user) {
    data.add(user.toJson());
  }

  void updateUser(User user) {
    data.removeWhere((element) => element['id'] == user.id);
    data.add(user.toJson());
  }

  void deleteUser(int id) {
    int initialLength = data.length;
    data.removeWhere((element) => element["id"] == id);
    if (data.length < initialLength) {
      print("User with id $id deleted successfully.");
    } else {
      print("User with id $id not found.");
    }
  }
}

