
import '../di.dart';
import '../helpers/msgs.dart';

class GetAllUsersState
{
   void call() {
    getAllUsers().forEach((user) {
      print('''
User ID: ${user.id}
name: ${user.name}
username: ${user.username}
email: ${user.email}
address: ${user.address}
phone: ${user.phone}
website: ${user.website}
company: ${user.company}
''');
    });
    endTaskMsg();
  }
}