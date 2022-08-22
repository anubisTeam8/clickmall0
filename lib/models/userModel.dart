/// status : true
/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hYmRvMTU3MjAwMS0wMDMtc2l0ZTguYXRlbXB1cmwuY29tXC9hcGlcL2xvZ2ludXNlciIsImlhdCI6MTY2MDU3MDYxMiwiZXhwIjoxOTcxNjEwNjEyLCJuYmYiOjE2NjA1NzA2MTIsImp0aSI6Ikc5OVVNaURVcUY2dEZXUXYiLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.4f-PYF0r9RpJmGxg5xRwn2t47mAY9pre1Afguka2gY8"
/// user : {"id":1,"name":"name","email":"user@gmail.com","phone":"01033953634","type":"User","fire":"12","stute":"Ready","email_verified_at":null,"created_at":"2022-08-11T18:23:28.000000Z","updated_at":"2022-08-15T13:36:59.000000Z"}

class UserModel {
  UserModel({
      this.status, 
      this.token, 
      this.user,});

  UserModel.fromJson(dynamic json) {
    status = json['status'];
    token = json['token'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  bool? status;
  String? token;
  User? user;
UserModel copyWith({  bool? status,
  String? token,
  User? user,
}) => UserModel(  status: status ?? this.status,
  token: token ?? this.token,
  user: user ?? this.user,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['token'] = token;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

/// id : 1
/// name : "name"
/// email : "user@gmail.com"
/// phone : "01033953634"
/// type : "User"
/// fire : "12"
/// stute : "Ready"
/// email_verified_at : null
/// created_at : "2022-08-11T18:23:28.000000Z"
/// updated_at : "2022-08-15T13:36:59.000000Z"

class User {
  User({
      this.id, 
      this.name, 
      this.email, 
      this.phone, 
      this.type, 
      this.fire, 
      this.stute, 
      this.emailVerifiedAt, 
      this.createdAt, 
      this.updatedAt,});

  User.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    type = json['type'];
    fire = json['fire'];
    stute = json['stute'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? id;
  String? name;
  String? email;
  String? phone;
  String? type;
  String? fire;
  String? stute;
  dynamic emailVerifiedAt;
  String? createdAt;
  String? updatedAt;
User copyWith({  num? id,
  String? name,
  String? email,
  String? phone,
  String? type,
  String? fire,
  String? stute,
  dynamic emailVerifiedAt,
  String? createdAt,
  String? updatedAt,
}) => User(  id: id ?? this.id,
  name: name ?? this.name,
  email: email ?? this.email,
  phone: phone ?? this.phone,
  type: type ?? this.type,
  fire: fire ?? this.fire,
  stute: stute ?? this.stute,
  emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['phone'] = phone;
    map['type'] = type;
    map['fire'] = fire;
    map['stute'] = stute;
    map['email_verified_at'] = emailVerifiedAt;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}