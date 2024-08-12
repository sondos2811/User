import '../entity/user.dart';
import '../repository/user_repository.dart';

class GetAllUsers {
  final UserRepository userRepository;
  const GetAllUsers(this.userRepository);

  List<User> call() {
    return userRepository.getAllUsers();
  }

}
