import 'package:fluent_ui/fluent_ui.dart';

import 'login.dart';
import 'registration.dart';

class AuthScreenManager extends StatefulWidget {
  const AuthScreenManager({super.key});

  @override
  State<AuthScreenManager> createState() => _AuthScreenManagerState();
}

class _AuthScreenManagerState extends State<AuthScreenManager> {
  @override
  Widget build(BuildContext context) {
    return AuthScreensNavigator();
  }
}

class AuthScreensNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/' || settings.name == '/login') {
          return PageRouteBuilder<LoginScreen>(
            pageBuilder: (_, _, _) => LoginScreen(),
          );
        } else if (settings.name == '/register') {
          return PageRouteBuilder<RegistrationScreen>(
            pageBuilder:
                (_, _, _) => ScaffoldPage(
                  header: const Text('Register'),
                  content: RegistrationScreen(),
                ),
          );
        }

        return null;
      },
    );
  }
}
