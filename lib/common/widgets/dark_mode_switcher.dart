import 'package:fluent_ui/fluent_ui.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app/common/blocs/theme_cubit.dart';

class DarkModeSwitcher extends StatefulWidget {
  const DarkModeSwitcher({super.key});

  @override
  State<DarkModeSwitcher> createState() => _DarkModeSwitcherState();
}

class _DarkModeSwitcherState extends State<DarkModeSwitcher> {
  late bool _isDarkMode;

  @override
  void initState() {
    super.initState();

    _isDarkMode =
        context.read<ThemeCubit>().state == ThemeState.darkMode ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    final style = ToggleSwitchTheme.of(context);
    return ToggleSwitch(
      checked: _isDarkMode,
      onChanged: (checked) {
        final newVal = !_isDarkMode;
        final cubit = context.read<ThemeCubit>();

        if (newVal) {
          cubit.setDarkMode();
        } else {
          cubit.setLightMode();
        }
        setState(() => _isDarkMode = newVal);
      },
      knobBuilder:
          (context, states) => DarkModeToggleSwitchKnob(
            isDarkMode: _isDarkMode,
            style: style,
            states: states,
          ),
    );
  }
}

class DarkModeToggleSwitchKnob extends StatelessWidget {
  const DarkModeToggleSwitchKnob({
    super.key,
    required this.isDarkMode,
    required this.style,
    required this.states,
  });

  final bool isDarkMode;
  final ToggleSwitchThemeData? style;
  final Set<WidgetState> states;

  @override
  Widget build(BuildContext context) {
    const checkedFactor = 1;
    return AnimatedContainer(
      duration: style?.animationDuration ?? Duration.zero,
      curve: style?.animationCurve ?? Curves.linear,
      margin:
          states.isHovered
              ? const EdgeInsets.all(1.0 + checkedFactor)
              : const EdgeInsets.symmetric(
                horizontal: 2.0 + checkedFactor,
                vertical: 2.0 + checkedFactor,
              ),
      height: 18.0,
      width:
          12.0 + (states.isHovered ? 2.0 : 0.0) + (states.isPressed ? 5.0 : 0),
      child: Center(
        child: Icon(
          size: 12,
          isDarkMode ? FluentIcons.clear_night : FluentIcons.sunny,
          color: isDarkMode ? Colors.white : null,
        ),
      ),
    );
  }
}
