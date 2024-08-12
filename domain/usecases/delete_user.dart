import '../repository/user_repository.dart';

class DeleteUser {
  final UserRepository userRepository;
  const DeleteUser(this.userRepository);
  void call(int id) {
    userRepository.deleteeUser(id);
  }
}
