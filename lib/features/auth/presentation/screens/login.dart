import 'package:flutter/material.dart';

import 'package:app/features/auth/data/auth.services.dart';
import 'package:app/features/auth/domain/auth.use_cases.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';

  OverlayEntry? _overlayEntry;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    _showLoadingOverlay(context);
    return Container(
      alignment: Alignment.center,
      color: Colors.grey,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 600,
          maxHeight: MediaQuery.of(context).size.height - 50,
        ),
        alignment: Alignment.center,
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.all(24),
        child: Card.outlined(
          child: Padding(
            padding: EdgeInsets.only(bottom: 50, right: 50, left: 50, top: 20),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Center(child: Container()),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 16,
                        ),
                        child: TextFormField(
                          onSaved: (value) => _username = value ?? '',
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter your email',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 16,
                        ),
                        child: TextFormField(
                          onSaved: (value) => _password = value ?? '',
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter your password',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Text('Create account'),
                      ),
                      FilledButton(
                        onPressed: () {
                          if (_formKey.currentState == null ||
                              !_formKey.currentState!.validate()) {
                            return;
                          }

                          _formKey.currentState!.save();
                          _login();
                        },
                        child: Text('Login'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _showLoadingOverlay(context) {
    if (_isLoading) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _overlayEntry = OverlayEntry(
          builder: (BuildContext context) {
            return Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                color: Colors.black.withValues(alpha: 0.7),
                child: const Center(child: CircularProgressIndicator()),
              ),
            );
          },
        );

        Overlay.of(context).insert(_overlayEntry!);
      });
    }
  }

  _login() {
    setState(() {
      _isLoading = true;
    });

    AuthService.getInstance().login(
      LoginUseCase(username: _username, password: _password),
    );

    setState(() {
      _isLoading = false;
    });

    if (_overlayEntry != null) {
      _overlayEntry!.remove();
      _overlayEntry = null;
    }
  }
}
