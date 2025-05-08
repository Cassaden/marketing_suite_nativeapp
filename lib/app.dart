import 'package:flutter/material.dart';

import 'package:app/core/layout/app_shell.dart';
import 'package:app/core/layout/app_loading.dart';

import 'package:app/core/theme.dart';
import 'package:app/core/utils/auth.dart';

import 'package:app/features/auth/screens/login.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool _isUserAuthenticated = false;
  bool _isLoading = true;

  void initState() {
    super.initState();

    final authUtils = AuthUtils();
    authUtils
        .isUserAuthenticated()
        .then(
          (isAuthenticated) => setState(() {
            _isUserAuthenticated = isAuthenticated;
            _isLoading = false;
          }),
        )
        .catchError(
          (error) => setState(() {
            _isUserAuthenticated = false;
            _isLoading = false;
          }),
        );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cassaden',
      theme: themeData,
      home: _getEntryPointScreen(),
    );
  }

  _getEntryPointScreen() {
    return _isLoading
        ? AppLoadingScreen()
        : _isUserAuthenticated
        ? const AppShellScreen()
        : const LoginScreen();
  }
}
