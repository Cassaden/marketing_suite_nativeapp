import 'package:app/features/auth/domain/auth.models.dart' as base;

class UserProfile implements base.UserProfile {
  UserProfile.fromMap(Map<String, dynamic> json);
  Map<String, dynamic> toMap() => {};
}

class User implements base.User {
  User.fromMap(Map<String, dynamic> json);
  Map<String, dynamic> toMap() => {};
}
