import 'auth.entities.dart';
import 'auth.models.dart';
import 'auth.repositories.dart';

class UserLoginUseCase {
  AuthRepository repository;
  UserLoginRequest request;

  UserLoginUseCase(this.request, {required this.repository});

  Future<User> execute() async {
    User user = await repository.login(request.username!, request.password!);

    return user;
  }
}
