part of 'cubit.dart';

enum LoginStatus { initial, loading, success, failure }

class LoginState extends Equatable {
  final LoginStatus status;

  final User? user;
  final AuthFeatureException? error;
  final String? loadingMessage;

  const LoginState(
    this.status, {
    required this.user,
    this.error,
    this.loadingMessage,
  });

  @override
  List<Object?> get props {
    return [status, user];
  }

  LoginState.initial() : this(LoginStatus.initial, user: null);
  LoginState.loading({String? loadingMessage})
    : this(LoginStatus.loading, user: null, loadingMessage: loadingMessage);
  LoginState.success(User loggedInUser)
    : this(LoginStatus.success, user: loggedInUser);
  LoginState.failure(AuthFeatureException error)
    : this(LoginStatus.failure, user: null, error: error);

  LoginState copyWith({
    LoginStatus? status,
    User? user,
    AuthFeatureException? error,
    String? loadingMessage,
  }) {
    return LoginState(
      status ?? this.status,
      user: user ?? this.user,
      error: error ?? this.error,
      loadingMessage: loadingMessage ?? this.loadingMessage,
    );
  }
}
