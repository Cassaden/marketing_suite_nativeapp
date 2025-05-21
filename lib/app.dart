import 'package:fluent_ui/fluent_ui.dart';

import 'package:app/core/layout/app_shell.dart';
import 'package:app/common/screens/loading.dart';

import 'package:app/core/theme.dart';
import 'package:app/features/auth/data/auth.repositories.dart';
import 'package:app/features/auth/presentation/screens/login.dart';

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

    AuthRepository.isUserAuthenticated()
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
    return FluentApp(
      title: 'Cassaden',
      theme: fluentThemeData,
      home: _getEntryPointScreen(),
    );
  }

  _getEntryPointScreen() {
    return _isLoading
        ? LoadingScreen()
        : _isUserAuthenticated
        ? const AppShellScreen()
        : const LoginScreen();
  }
}
