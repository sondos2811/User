import '../di.dart';
import '../helpers/msgs.dart';
import 'dart:io';
class DeleteUserState
{
  void call()
  {
    recieverMsg("the id of user");
    int id = int.parse(stdin.readLineSync()!);
    deleteUser(id);
    endTaskMsg();
  }
}