import 'package:flutter/material.dart';

import 'package:app/features/auth/presentation/screens/login.dart';

class AuthScreenManager extends StatefulWidget {
  const AuthScreenManager({super.key});

  @override
  State<AuthScreenManager> createState() => _AuthScreenManagerState();
}

class _AuthScreenManagerState extends State<AuthScreenManager> {
  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}
