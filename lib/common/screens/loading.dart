import 'package:fluent_ui/fluent_ui.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: const ProgressRing());
  }
}
