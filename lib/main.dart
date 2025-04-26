import 'package:flutter/material.dart';

import 'package:app/core/layout/app_shell.dart';
import 'package:app/core/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cassaden',
      theme: themeData,
      home: const AppShellScreen(),
    );
  }
}
