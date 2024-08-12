import 'dart:convert';
import 'dart:io';
import '../../domain/entity/user.dart';
import '../di.dart';
import '../helpers/msgs.dart';
class AddUserState 
{
  void call() {
    recieverMsg("the name of user");
    String name = stdin.readLineSync()!;
    recieverMsg("the username of user");
    String username = stdin.readLineSync()!;
    recieverMsg("the email of user");
    String email = stdin.readLineSync()!;
    recieverMsg("Enter address (street, suite, city, zipcode, geo):");
    String input = stdin.readLineSync()!;
    Address address = Address.fromJson(jsonDecode(input));
    recieverMsg("the phone of user");
    String phone = stdin.readLineSync()!;
    recieverMsg("the website of user");
    String website= stdin.readLineSync()!;
    recieverMsg("the company of user");
    String companyInput = stdin.readLineSync()!;
    Company company = Company.fromJson(jsonDecode(companyInput));
    endTaskMsg();
    addUser(User(
      name: name,
      username: username,
      email: email,
      address: address,
      phone: phone,
      website: website,
      company: company,
    ));
  }
}