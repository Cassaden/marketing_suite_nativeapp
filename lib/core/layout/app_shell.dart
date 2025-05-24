import 'package:fluent_ui/fluent_ui.dart';

import 'package:app/common/widgets/dark_mode_switcher.dart';

import 'sidenav_items.dart';

class AppShellScreen extends StatefulWidget {
  const AppShellScreen({super.key});

  @override
  State<AppShellScreen> createState() => _AppShellScreenState();
}

class _AppShellScreenState extends State<AppShellScreen> {
  PaneDisplayMode displayMode = PaneDisplayMode.compact;
  int topIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: NavigationAppBar(
        title: Text(
          'Cassaden Marketing',
          style: FluentTheme.of(context).typography.bodyLarge,
        ),
        actions: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          alignment: Alignment.centerRight,
          child: DarkModeSwitcher(),
        ),
        automaticallyImplyLeading: false,
      ),
      pane: NavigationPane(
        selected: topIndex,
        onItemPressed: (index) {
          if (index == topIndex) {
            if (displayMode == PaneDisplayMode.open) {
              setState(() => this.displayMode = PaneDisplayMode.compact);
            } else if (displayMode == PaneDisplayMode.compact) {
              setState(() => this.displayMode = PaneDisplayMode.open);
            }
          }
        },
        onChanged: (index) => setState(() => topIndex = index),
        displayMode: displayMode,
        items: items,
        footerItems: footerItems,
      ),
    );
  }
}
