import 'package:fluent_ui/fluent_ui.dart';

class ExecutingScreen extends StatelessWidget {
  final String processTitle;

  const ExecutingScreen(this.processTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: <Widget>[
          ProgressRing(),
          Text(
            processTitle,
            style: FluentTheme.of(context).typography.subtitle!.copyWith(
              color:
                  FluentTheme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
