import '../entity/user.dart';
import '../repository/user_repository.dart';

class UpdateUser {
  final UserRepository userRepository;
  const UpdateUser(this.userRepository);
  void call(User user) {
    userRepository.updateUser(user);
  }
}
