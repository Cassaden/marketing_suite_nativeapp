import 'package:flutter/material.dart';

import '../../features/home.dart';
import '../../features/campaigns.dart';
import '../../features/contacts/screens/main.dart';
import '../../features/messaging.dart';

import 'app_shell/sidebar.dart';
import 'app_shell/footer.dart';

class AppShellScreen extends StatefulWidget {
  const AppShellScreen({super.key});

  @override
  State<AppShellScreen> createState() => _AppShellScreenState();
}

class _AppShellScreenState extends State<AppShellScreen> {
  int _selectedIndex = 0;
  final double _sidebarMaxWidth = 256;

  final List<Widget Function()> _screens = [
    HomeScreen.new,
    MessagingScreen.new,
    ContactsScreen.new,
    CampaignsScreen.new,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            AppSidebar(
              maxWidth: _sidebarMaxWidth,
              selectedIndex: _selectedIndex,
              onDestinationSelected:
                  (int index) => setState(() {
                    _selectedIndex = index;
                  }),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(color: Theme.of(context).scaffoldBackgroundColor),
                  Expanded(
                    child: Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Column(
                        children: [
                          Container(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            height: Theme.of(context).appBarTheme.toolbarHeight,
                          ),
                          Expanded(
                            child: AnimatedSwitcher(
                              duration: Duration(seconds: 1),
                              child: _screens[_selectedIndex](),
                            ),
                          ),
                          AppFooter(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
