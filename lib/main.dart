import 'package:flutter/material.dart';

import 'package:app/screens/app_shell.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cassaden',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        appBarTheme: AppBarTheme(toolbarHeight: 60),
      ),
      home: const AppShellScreen(),
    );
  }
}
