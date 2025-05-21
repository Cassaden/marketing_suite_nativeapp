import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart' hide Colors;

final themeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
  appBarTheme: AppBarTheme(toolbarHeight: 60),
);

final fluentThemeData = FluentThemeData();
