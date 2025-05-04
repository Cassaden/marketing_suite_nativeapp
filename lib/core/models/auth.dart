import 'dart:convert';

class UserLogin {
  String? username;
  String? email;
  String? password;

  UserLogin({this.username, this.email, this.password});

  UserLogin.fromJson(String json) {
    UserLogin.fromMap(jsonDecode(json));
  }

  UserLogin.fromMap(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }

  String toJson() {
    return jsonEncode(toMap());
  }
}

class UserRegistration {
  String? email;
  String? username;
  String? password;
  String? firstName;
  String? lastName;

  UserRegistration({this.email, this.password, this.firstName, this.lastName});

  UserRegistration.fromMap(Map<String, dynamic> json) {
    email = json['email'];
    username = json['username'];
    password = json['password'];
    firstName = json['first_name'];
    lastName = json['last_name'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['username'] = this.username;
    data['password'] = this.password;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    return data;
  }
}

class UserProfile {
  UserProfile.fromMap(Map<String, dynamic> json);
  Map<String, dynamic> toMap() => {};
}

class User {
  User.fromMap(Map<String, dynamic> json);
  Map<String, dynamic> toMap() => {};
}
