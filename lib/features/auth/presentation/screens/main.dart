import 'package:fluent_ui/fluent_ui.dart';

import 'package:app/common/widgets/dark_mode_switcher.dart';

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
    return ScaffoldPage(
      header: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FluentTheme.of(context).menuColor,
                borderRadius: BorderRadius.circular(16),
              ),
              constraints: BoxConstraints(maxWidth: 120, maxHeight: 40),
            ),
            DarkModeSwitcher(),
          ],
        ),
      ),
      content: Navigator(
        initialRoute: '/',
        onGenerateRoute: (settings) {
          if (settings.name == '/' || settings.name == '/login') {
            return PageRouteBuilder<LoginScreen>(
              pageBuilder: (_, _, _) => LoginScreen(),
            );
          } else if (settings.name == '/register') {
            return PageRouteBuilder<RegistrationScreen>(
              pageBuilder: (_, _, _) => RegistrationScreen(),
            );
          }

          return null;
        },
      ),
    );
  }
}
