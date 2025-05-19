import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:equatable/equatable.dart';

import 'package:app/features/auth/data/auth.models.dart';
import 'package:app/features/auth/data/auth.repositories.dart';

part 'login.cubit.state.dart';

class LoginCubit extends Cubit<LoginState> {
  AuthRepository repository;
  LoginCubit(super.initialState, {required this.repository});

  Future<void> initialize() async {
    emit(LoginState.loading());

    await AuthRepository.getCurrentLoggedInUser();
  }
}
