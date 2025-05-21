import 'dart:convert';

class UserLoginRequest {
  String? username;
  String? email;
  String? password;

  UserLoginRequest({this.username, this.email, this.password});

  UserLoginRequest.fromJson(String json) {
    UserLoginRequest.fromMap(jsonDecode(json));
  }

  UserLoginRequest.fromMap(Map<String, dynamic> json) {
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

class UserRegistrationRequest {
  String? email;
  String? username;
  String? password1;
  String? password2;
  String? firstName;
  String? lastName;

  UserRegistrationRequest({
    this.email,
    this.password1,
    this.password2,
    this.firstName,
    this.lastName,
  });

  UserRegistrationRequest.fromMap(Map<String, dynamic> json) {
    email = json['email'];
    username = json['username'];
    password1 = json['password1'];
    password2 = json['password2'];
    firstName = json['first_name'];
    lastName = json['last_name'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['username'] = this.username;
    data['password1'] = this.password1;
    data['password2'] = this.password2;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    return data;
  }
}
