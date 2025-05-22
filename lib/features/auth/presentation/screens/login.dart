import 'package:fluent_ui/fluent_ui.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app/features/auth/presentation/blocs/login/cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status == LoginStatus.failure) {
          if (state.error != null) {
            showDialog(
              context: context,
              builder:
                  (context) => Container(child: Text(state.error!.message)),
            );
          }
        }
      },
      builder:
          (context, state) => Container(
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
              child: Card(
                backgroundColor: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 50,
                    right: 50,
                    left: 50,
                    top: 20,
                  ),
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
                              child: TextFormBox(
                                onSaved: (value) => _username = value ?? '',

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
                              child: PasswordFormBox(
                                onSaved: (value) => _password = value ?? '',
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
                            Button(
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

                                context.read<LoginCubit>().login(
                                  _username,
                                  _password,
                                );
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
          ),
    );
  }
}
