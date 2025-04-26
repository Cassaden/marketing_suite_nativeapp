import 'package:flutter/material.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  ThemeMode themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: themeMode == ThemeMode.dark,
      onChanged: (value) {
        themeMode = value ? ThemeMode.dark : ThemeMode.light;
      },
    );
  }
}
