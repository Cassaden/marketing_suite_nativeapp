import 'package:flutter_bloc/flutter_bloc.dart';

enum ThemeState { darkMode, lightMode }

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit(super.initialState);

  setDarkMode() {
    emit(ThemeState.darkMode);
  }

  setLightMode() {
    emit(ThemeState.lightMode);
  }
}
