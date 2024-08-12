import '../entity/user.dart';
import '../repository/user_repository.dart';

class AddUser {
  final UserRepository userRepository;
  const AddUser(this.userRepository);
  void call(User user) {
    userRepository.addUser(user);
  }
}
