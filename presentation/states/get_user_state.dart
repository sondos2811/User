import '../../domain/entity/user.dart';
import '../di.dart';
import '../helpers/msgs.dart';
import 'dart:io';

class GetUserState {
  void call() {
    recieverMsg("the id of user");
    int id = int.parse(stdin.readLineSync()!);
      User user = getUser(id);
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
    endTaskMsg();
  }
  }
