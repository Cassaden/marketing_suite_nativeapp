import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:equatable/equatable.dart';

import 'package:app/features/auth/exceptions.dart';

import 'package:app/features/auth/data/auth.models.dart';
import 'package:app/features/auth/data/auth.repositories.dart';

part 'state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository repository;

  LoginCubit._(super.initialState, {required this.repository});

  factory LoginCubit(AuthRepository repository) {
    return LoginCubit._(LoginState.initial(), repository: repository);
  }

  Future<void> initialize() async {
    emit(LoginState.initial());
  }

  Future<void> getLoggedInUser() async {
    try {
      emit(LoginState.loading());
      User user = await repository.getCurrentLoggedInUser();
      emit(LoginState.success(user));
    } on AuthFeatureException catch (e, s) {
      emit(LoginState.failure(e));
      log("Failed to login user.", error: e, stackTrace: s, name: 'auth');
    } catch (e) {
      emit(LoginState.initial());
      rethrow;
    }
  }

  Future<void> clearError() async {
    emit(state.copyWith(error: null));
  }

  Future<void> login(String username, String password) async {
    try {
      emit(LoginState.loading());
      User user = await repository.login(username, password);
      emit(LoginState.success(user));
    } on AuthFeatureException catch (e, s) {
      emit(LoginState.failure(e));
      log(
        "Failed to login user due to managed error.",
        error: e,
        stackTrace: s,
        name: 'auth',
      );
    } catch (e, s) {
      log(
        "Failed to log a user in due to unexpected error.",
        error: e,
        stackTrace: s,
        name: 'auth',
      );
      emit(LoginState.failure(UserLoginFailedException(username)));
      rethrow;
    }
  }

  Future<void> logout() async {
    emit(LoginState.loading(loadingMessage: 'Signing out'));
    await repository.logout();
    emit(LoginState.initial());
  }
}
