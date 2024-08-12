# Project Architecture

> User
> > domain
> > > entity
> > > > user.dart > User [id?,name, username, email, address, phone, website, company] 
> > > repository
> > > > user_repository.dart abstract
> List<User> getAllUsers()
> User getUser(int id)
> void addUser(User user)
> void updateUser(User user)
> void deleteUser(int id)
> > > usecases
> get_all_Users.dart
> class GetAllUsers > UserRepository 
> List<User> call() {
>   return UserRepository.;
> }
> > data
> > > Future
> > > api
> > > Dio
> > > UserModel [NamedConstructor, factory]
> > presentation
