part of 'login.cubit.dart';

enum LoginStatus { initial, loading, success, failure }

class LoginState extends Equatable {
  final LoginStatus status;
  final User? user;

  const LoginState(this.status, {required this.user});

  @override
  List<Object?> get props {
    return [status, user];
  }

  LoginState.initial() : this(LoginStatus.initial, user: null);
  LoginState.loading() : this(LoginStatus.loading, user: null);
  LoginState.success(User loggedInUser)
    : this(LoginStatus.success, user: loggedInUser);
  LoginState.failure() : this(LoginStatus.failure, user: null);
}
