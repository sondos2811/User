import '../../domain/entity/user.dart';
import '../../domain/repository/user_repository.dart';
import '../data source/user_remote_data.dart';

class UserRepositoryImp implements UserRepository {
  final UserRemoteData userRemoteData;
  const UserRepositoryImp(this.userRemoteData);
  List<User> getAllUsers() {
    return UserRemoteData().getAllUsers();
  }
  User getUsers(int id) {
    return UserRemoteData().getUsers(id);
  }
  void addUser(User user) {
    UserRemoteData().addUser(user);
  }
  void updateUser(User user) {
    UserRemoteData().updateUser(user);
  }
  void deleteeUser(int id) {
    UserRemoteData().deleteUser(id);
  }
}
