import '../../core/identifier.dart';

class User implements Identifier {
final int? id;
final String? name;
final String? username;
final String? email;
final Address? address;
final String? phone;
final String? website;
final Company? company;
const User({this.id , this.name , this.username , this.email , this.address , this.phone , this.website , this.company });
User copyWith({int? id, String? name, String? username, String? email, Address? address, String? phone, String? website, Company? company}){
return User(
            id:id ?? this.id,
name:name ?? this.name,
username:username ?? this.username,
email:email ?? this.email,
address:address ?? this.address,
phone:phone ?? this.phone,
website:website ?? this.website,
company:company ?? this.company
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'id': id,
'name': name,
'username': username,
'email': email,
'address': address?.toJson(),
'phone': phone,
'website': website,
'company': company?.toJson()
    };
}

static User fromJson(Map<String , Object?> json){
    return User(
            id:json['id'] == null ? null : json['id'] as int,
name:json['name'] == null ? null : json['name'] as String,
username:json['username'] == null ? null : json['username'] as String,
email:json['email'] == null ? null : json['email'] as String,
address:json['address'] == null ? null : Address.fromJson(json['address']  as Map<String,Object?>),
phone:json['phone'] == null ? null : json['phone'] as String,
website:json['website'] == null ? null : json['website'] as String,
company:json['company'] == null ? null : Company.fromJson(json['company']  as Map<String,Object?>)
    );
}

@override
String toString(){
    return '''User(
                id:$id,
name:$name,
username:$username,
email:$email,
address:${address.toString()},
phone:$phone,
website:$website,
company:${company.toString()}
    ) ''';
}

@override
bool operator ==(Object other){
    return other is User && 
        other.runtimeType == runtimeType &&
        other.id == id && 
other.name == name && 
other.username == username && 
other.email == email && 
other.address == address && 
other.phone == phone && 
other.website == website && 
other.company == company;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                id, 
name, 
username, 
email, 
address, 
phone, 
website, 
company
    );
}
    
}
      
      
class Company {
final String? name;
final String? catchPhrase;
final String? bs;
const Company({this.name , this.catchPhrase , this.bs });
Company copyWith({String? name, String? catchPhrase, String? bs}){
return Company(
            name:name ?? this.name,
catchPhrase:catchPhrase ?? this.catchPhrase,
bs:bs ?? this.bs
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'name': name,
'catchPhrase': catchPhrase,
'bs': bs
    };
}

static Company fromJson(Map<String , Object?> json){
    return Company(
            name:json['name'] == null ? null : json['name'] as String,
catchPhrase:json['catchPhrase'] == null ? null : json['catchPhrase'] as String,
bs:json['bs'] == null ? null : json['bs'] as String
    );
}

@override
String toString(){
    return '''Company(
                name:$name,
catchPhrase:$catchPhrase,
bs:$bs
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Company && 
        other.runtimeType == runtimeType &&
        other.name == name && 
other.catchPhrase == catchPhrase && 
other.bs == bs;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                name, 
catchPhrase, 
bs
    );
}
    
}
      
      
class Address {
final String? street;
final String? suite;
final String? city;
final String? zipcode;
final Geo? geo;
const Address({this.street , this.suite , this.city , this.zipcode , this.geo });
Address copyWith({String? street, String? suite, String? city, String? zipcode, Geo? geo}){
return Address(
            street:street ?? this.street,
suite:suite ?? this.suite,
city:city ?? this.city,
zipcode:zipcode ?? this.zipcode,
geo:geo ?? this.geo
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'street': street,
'suite': suite,
'city': city,
'zipcode': zipcode,
'geo': geo?.toJson()
    };
}

static Address fromJson(Map<String , Object?> json){
    return Address(
            street:json['street'] == null ? null : json['street'] as String,
suite:json['suite'] == null ? null : json['suite'] as String,
city:json['city'] == null ? null : json['city'] as String,
zipcode:json['zipcode'] == null ? null : json['zipcode'] as String,
geo:json['geo'] == null ? null : Geo.fromJson(json['geo']  as Map<String,Object?>)
    );
}

@override
String toString(){
    return '''Address(
                street:$street,
suite:$suite,
city:$city,
zipcode:$zipcode,
geo:${geo.toString()}
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Address && 
        other.runtimeType == runtimeType &&
        other.street == street && 
other.suite == suite && 
other.city == city && 
other.zipcode == zipcode && 
other.geo == geo;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                street, 
suite, 
city, 
zipcode, 
geo
    );
}
    
}
      
      
class Geo {
final String? lat;
final String? lng;
const Geo({this.lat , this.lng });
Geo copyWith({String? lat, String? lng}){
return Geo(
            lat:lat ?? this.lat,
lng:lng ?? this.lng
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'lat': lat,
'lng': lng
    };
}

static Geo fromJson(Map<String , Object?> json){
    return Geo(
            lat:json['lat'] == null ? null : json['lat'] as String,
lng:json['lng'] == null ? null : json['lng'] as String
    );
}

@override
String toString(){
    return '''Geo(
                lat:$lat,
lng:$lng
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Geo && 
        other.runtimeType == runtimeType &&
        other.lat == lat && 
other.lng == lng;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                lat, 
lng
    );
}
    
}
      
      
  
     