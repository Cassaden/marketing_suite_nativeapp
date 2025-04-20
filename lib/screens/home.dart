import 'package:flutter/material.dart';

import 'campaigns.dart';
import 'contacts.dart';
import 'messaging.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  final double _groupAlignment = -1.0;

  final List<Widget Function()> _screens = [
    MessagingScreen.new,
    ContactsScreen.new,
    CampaignsScreen.new,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.logout),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Divider(height: 1, thickness: 1, color: Colors.grey),
            Expanded(
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
                    destinations: const <NavigationRailDestination>[
                      NavigationRailDestination(
                        icon: Icon(Icons.inbox),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: ElevatedButton(
                              child: Text('Sign out'),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  VerticalDivider(),
                  Expanded(child: _screens[_selectedIndex]()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
