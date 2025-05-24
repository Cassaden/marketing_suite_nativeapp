import 'package:app/features/auth/domain/auth.models.dart' as base;

class User implements base.User {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  factory User.fromMap(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
    );
  }

  @override
  Map<String, dynamic> toMap() => {
    'id': id,
    'username': username,
    'email': email,
    'first_name': firstName,
    'last_name': lastName,
  };
}

class UserProfile implements base.UserProfile {
  final int id;
  final User user;

  UserProfile({required this.id, required this.user});

  factory UserProfile.fromMap(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'] as int,
      user: User.fromMap(json['user'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toMap() => {'id': id, 'user': user.toMap()};
}
