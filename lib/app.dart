import 'package:fluent_ui/fluent_ui.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app/core/layout/app_shell.dart';
import 'package:app/core/theme.dart';

import 'package:app/common/blocs/theme_cubit.dart';

import 'package:app/common/screens/executing.dart';

import 'package:app/features/auth/data/auth.repositories.dart';

import 'package:app/features/auth/presentation/screens/main.dart';

import 'package:app/features/auth/presentation/blocs/login/cubit.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (context) => ThemeCubit()),
        BlocProvider<LoginCubit>(
          create: (context) => LoginCubit(AuthRepository())..getLoggedInUser(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder:
            (context, state) => FluentApp(
              title: 'M Suite',
              theme: fluentThemeData,
              darkTheme: fluentThemeDataDarkMode,
              themeMode:
                  state == ThemeState.lightMode
                      ? ThemeMode.light
                      : ThemeMode.dark,
              home: BlocBuilder<LoginCubit, LoginState>(
                builder:
                    (context, state) => Container(
                      child: switch (state.status) {
                        LoginStatus.loading => ExecutingScreen(
                          state.loadingMessage ?? 'Please wait',
                        ),
                        LoginStatus.success => AppShellScreen(),
                        LoginStatus.failure ||
                        LoginStatus.initial => AuthScreenManager(),
                      },
                    ),
              ),
            ),
      ),
    );
  }
}
