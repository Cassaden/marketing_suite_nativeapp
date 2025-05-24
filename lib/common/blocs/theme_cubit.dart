import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ThemeState { darkMode, lightMode }

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.lightMode) {
    _initialize();
  }

  _initialize() {
    SharedPreferences.getInstance().then((instance) {
      bool? isDarkMode = instance.getBool('isDarkMode');

      if (isDarkMode == true) {
        setDarkMode();
      } else if (isDarkMode == false) {
        setLightMode();
      }
    });
  }

  setDarkMode() {
    emit(ThemeState.darkMode);
    SharedPreferences.getInstance().then(
      (instance) => instance.setBool('isDarkMode', true),
    );
  }

  setLightMode() {
    emit(ThemeState.lightMode);
    SharedPreferences.getInstance().then(
      (instance) => instance.setBool('isDarkMode', false),
    );
  }
}
