import 'package:flutter/material.dart';

import 'home.dart';
import 'campaigns.dart';
import 'contacts.dart';
import 'messaging.dart';

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
            NavigationRail(
              extended: true,
              selectedIndex: _selectedIndex,
              groupAlignment: _groupAlignment,
              onDestinationSelected:
                  (int index) => setState(() {
                    _selectedIndex = index;
                  }),
              leading: Container(
                clipBehavior: Clip.none,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
                constraints: BoxConstraints(maxWidth: _navigationRailMaxWidth),
                height: Theme.of(context).appBarTheme.toolbarHeight,
                child: Center(child: Text('App Logo')),
              ),
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(Icons.home_outlined),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.inbox_outlined),
                  label: Text('Messaging'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.contact_page_outlined),
                  label: Text('Contacts'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.announcement_outlined),
                  label: Text('Campaigns'),
                ),
              ],
              trailing: Expanded(
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: _navigationRailMaxWidth,
                  ),
                  padding: EdgeInsets.all(4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(child: Text('Sign out'), onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ),
            VerticalDivider(width: 1, thickness: 1),
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
