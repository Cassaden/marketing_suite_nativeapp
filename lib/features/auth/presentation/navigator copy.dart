import 'package:flutter/material.dart';

class AuthScreensNavigator extends StatefulWidget {
  @override
  _AuthScreensNavigatorState createState() => _AuthScreensNavigatorState();
}

class _AuthScreensNavigatorState extends State<AuthScreensNavigator> {
  bool showRegistration = false;

  void _goToRegistration() {
    setState(() {
      showRegistration = true;
    });
  }

  void _goToLogin() {
    setState(() {
      showRegistration = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [
        MaterialPage(
          child: LoginScreen(onRegisterTap: _goToRegistration),
          name: '/register',
        ),
        if (showRegistration)
          MaterialPage(
            child: RegistrationScreen(onBackTap: _goToLogin),
            name: '/register',
          ),
      ],
    );
  }
}

class LoginScreen extends StatelessWidget {
  final VoidCallback onRegisterTap;

  LoginScreen({required this.onRegisterTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: onRegisterTap,
          child: Text('Go to Registration'),
        ),
      ),
    );
  }
}

class RegistrationScreen extends StatelessWidget {
  final VoidCallback onBackTap;

  RegistrationScreen({required this.onBackTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: onBackTap,
          child: Text('Back to Login'),
        ),
      ),
    );
  }
}
