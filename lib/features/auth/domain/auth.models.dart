abstract interface class User {
  User.fromMap(Map<String, dynamic> json);
  Map<String, dynamic> toMap();
}

abstract interface class UserProfile {
  UserProfile.fromMap(Map<String, dynamic> json);
  Map<String, dynamic> toMap() => {};
}
