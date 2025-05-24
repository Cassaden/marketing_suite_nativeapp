import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app/features/auth/exceptions.dart';
import 'package:app/features/auth/presentation/blocs/login/cubit.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder:
          (context, state) => Container(
            alignment: Alignment.center,
            color: FluentTheme.of(context).scaffoldBackgroundColor,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 600,
                maxHeight: MediaQuery.of(context).size.height - 50,
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.all(24),
              child: Column(
                spacing: 16,
                children: [
                  Center(
                    child: Text(
                      'Sign Up',
                      style: FluentTheme.of(context).typography.title,
                    ),
                  ),
                  Expanded(
                    child: Card(
                      backgroundColor: FluentTheme.of(context).cardColor,
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
                            spacing: 8,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 16,
                                    ),
                                    child: InfoLabel(
                                      label: "Username",
                                      child: TextFormBox(
                                        placeholder: 'john@doe.com',
                                        onSaved:
                                            (value) => _username = value ?? '',

                                        validator: (String? value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 16,
                                    ),
                                    child: InfoLabel(
                                      label: 'Password',
                                      child: PasswordFormBox(
                                        onSaved:
                                            (value) => _password = value ?? '',
                                        validator: (String? value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  HyperlinkButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Already have an account?'),
                                  ),
                                  FilledButton(
                                    onPressed: () {
                                      if (_formKey.currentState == null ||
                                          !_formKey.currentState!.validate()) {
                                        return;
                                      }

                                      _formKey.currentState!.save();
                                    },
                                    child: Text('Sign Up'),
                                  ),
                                ],
                              ),
                              AnimatedOpacity(
                                duration: Duration(milliseconds: 400),
                                opacity: _isErrorVisible(state) ? 1 : 0,
                                child:
                                    _isErrorVisible(state)
                                        ? InfoBar(
                                          title: const Text('Oops :/'),
                                          severity: InfoBarSeverity.error,
                                          content: Text(state.error!.message),
                                          action: IconButton(
                                            icon: Icon(FluentIcons.close_pane),
                                            onPressed: () => {},
                                          ),
                                        )
                                        : SizedBox.shrink(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }

  bool _isErrorVisible(LoginState state) {
    return state.error != null &&
        !(state.error is NoLoggedInUserFoundException);
  }

  void x() {
    print(_username);
    print(_password);
  }
}
