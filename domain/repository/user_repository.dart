import '../entity/user.dart';

abstract class UserRepository
{
  List<User> getAllUsers();
  User getUsers(int id);
  void addUser(User user);
  void updateUser(User user);
  void deleteeUser(int id);
}