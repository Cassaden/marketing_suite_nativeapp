import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app/common/widgets/dark_mode_switcher.dart';

import 'package:app/features/auth/exceptions.dart';
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
          print("Gotten login error ${state.error}");
        }
      },
      builder:
          (context, state) => ScaffoldPage(
            header: Padding(
              padding: EdgeInsets.all(8),
              child: Row(children: [DarkModeSwitcher()]),
            ),
            content: Container(
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
                                    onSaved: (value) => _username = value ?? '',

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
                                    onSaved: (value) => _password = value ?? '',
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
                                        onPressed:
                                            () =>
                                                context
                                                    .read<LoginCubit>()
                                                    .initialize(),
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
            ),
          ),
    );
  }

  bool _isErrorVisible(LoginState state) {
    return state.error != null &&
        !(state.error is NoLoggedInUserFoundException);
  }
}
