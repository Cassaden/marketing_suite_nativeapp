import 'package:fluent_ui/fluent_ui.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app/core/layout/app_shell.dart';
import 'package:app/common/screens/executing.dart';
import 'package:app/common/screens/loading.dart';

import 'package:app/core/theme.dart';

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
    return FluentApp(
      title: 'Cassaden',
      theme: fluentThemeData,
      home: BlocProvider<LoginCubit>(
        create: (context) {
          final cubit = LoginCubit(AuthRepository());
          cubit.getLoggedInUser();
          return cubit;
        },
        child: BlocBuilder<LoginCubit, LoginState>(
          builder:
              (context, state) => switch (state.status) {
                LoginStatus.initial => LoadingScreen(),
                LoginStatus.loading => ExecutingScreen(
                  state.loadingMessage ?? 'Please wait',
                ),
                LoginStatus.success => AppShellScreen(),
                LoginStatus.failure => AuthScreenManager(),
              },
        ),
      ),
    );
  }
}
