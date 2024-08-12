import '../data/data source/user_remote_data.dart';
import '../data/repository/user_repository_imp.dart';
import '../domain/usecases/add_user.dart';
import '../domain/usecases/delete_user.dart';
import '../domain/usecases/get_all_users.dart';
import '../domain/usecases/get_user.dart';
import '../domain/usecases/update_user.dart';
import 'states/add_user_state.dart';
import 'states/delete_user_state.dart';
import 'states/get_all_users_state.dart';
import 'states/get_user_state.dart';
import 'states/update_user_state.dart';

UserRepositoryImp userRepositoryImp = UserRepositoryImp(UserRemoteData());
//usecases
GetAllUsers getAllUsers = GetAllUsers(userRepositoryImp);
GetUser getUser = GetUser(userRepositoryImp);
AddUser addUser = AddUser(userRepositoryImp);
DeleteUser deleteUser = DeleteUser(userRepositoryImp);
UpdateUser updateUser = UpdateUser(userRepositoryImp);

//state
GetAllUsersState getAllUsersState = GetAllUsersState();
GetUserState getUserState = GetUserState();
AddUserState addUserState = AddUserState();
DeleteUserState deleteUserState = DeleteUserState();
UpdateUserState updateUserState = UpdateUserState();
