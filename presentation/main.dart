import 'di.dart';
import 'helpers/msgs.dart';
import 'dart:io';

void main() {
  welcomeMsg();
  int service = int.parse(stdin.readLineSync()!);
  switch (service) {
    case 1:
      getAllUsersState.call();
      break;
    case 2:
      getUserState.call();
      break;
    case 3:
      addUserState.call();
      break;
    case 4:
      updateUserState.call();
      break;
    case 5:
      deleteUserState.call();
      break;
    case 6:
      endTaskMsg();
      break;
  }
}
