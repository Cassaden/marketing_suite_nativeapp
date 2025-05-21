import 'package:fluent_ui/fluent_ui.dart';

class FeatureUnderConstructionScreen extends StatelessWidget {
  final String title;

  const FeatureUnderConstructionScreen(this.title, {super.key});

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
          Text(title, style: FluentTheme.of(context).typography.title),
          Text(
            'This feature is under construction.',
            style: FluentTheme.of(context).typography.subtitle,
          ),
        ],
      ),
    );
  }
}
