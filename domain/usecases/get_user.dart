import '../entity/user.dart';
import '../repository/user_repository.dart';

class GetUser {
  final UserRepository userRepository;
  const GetUser(this.userRepository);
  User call(int id)
  {
    return userRepository.getUsers(id);
  }
}
