import '../../domain/entity/user.dart';

class UserModel extends User {
  UserModel(
      {super.id,
      required super.address,
      required super.company,
      required super.email,
      required super.name,
      required super.phone,
      required super.username,
      required super.website});
  factory UserModel.fromJson(Map<String, Object?> json) {
    return UserModel(
        id: json['id'] as int,
        name: json['name'] as String,
        username: json['username'] as String,
        email: json['email'] as String,
        address: Address.fromJson(json['address'] as Map<String, Object?>),
        phone: json['phone'] as String,
        website: json['website'] as String,
        company: Company.fromJson(json['company'] as Map<String, Object?>));
  }
}
