import 'package:flutter/material.dart';

import 'home.dart';
import 'campaigns.dart';
import 'contacts.dart';
import 'messaging.dart';

import 'app_shell/navigation_rail.dart';
import 'app_shell/footer.dart';

class AppShellScreen extends StatefulWidget {
  const AppShellScreen({super.key});

  @override
  State<AppShellScreen> createState() => _AppShellScreenState();
}

class _AppShellScreenState extends State<AppShellScreen> {
  int _selectedIndex = 0;

  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  final double _groupAlignment = -1.0;
  final double _navigationRailMaxWidth = 256;

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
            AppNavigationRail(
              selectedIndex: _selectedIndex,
              groupAlignment: _groupAlignment,
              maxWidth: _navigationRailMaxWidth,
              onDestinationSelected:
                  (int index) => setState(() {
                    _selectedIndex = index;
                  }),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    height: Theme.of(context).appBarTheme.toolbarHeight! + 7,
                  ),
                  Divider(height: 1, thickness: 1, color: Colors.grey),
                  Expanded(
                    child: Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Column(
                        children: [
                          Container(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            height: Theme.of(context).appBarTheme.toolbarHeight,
                          ),
                          Expanded(child: _screens[_selectedIndex]()),
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
