import 'package:flutter/material.dart';

import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';

class AppNavigationRail extends StatelessWidget {
  const AppNavigationRail({
    super.key,
    required this.selectedIndex,
    required this.groupAlignment,
    required this.maxWidth,
    required this.onDestinationSelected,
  });

  final int selectedIndex;
  final double groupAlignment;
  final double maxWidth;
  final Function onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
          extended: true,
          selectedIndex: selectedIndex,
          groupAlignment: groupAlignment,
          onDestinationSelected: (int index) => onDestinationSelected(index),
          leading: Container(
            clipBehavior: Clip.none,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
            ),
            constraints: BoxConstraints(maxWidth: maxWidth),
            height: Theme.of(context).appBarTheme.toolbarHeight,
            child: Center(child: Text('App Logo')),
          ),
          destinations: const <NavigationRailDestination>[
            NavigationRailDestination(
              icon: Iconify(Ph.circles_four),
              label: Text('Home'),
            ),
            NavigationRailDestination(
              icon: Iconify(Ph.chat_circle_dots),
              label: Text('Chats'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.contact_page_outlined),
              label: Text('Contacts'),
            ),
            NavigationRailDestination(
              icon: Iconify(Ph.megaphone),
              label: Text('Campaigns'),
            ),
          ],
          trailing: Expanded(
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(maxWidth: maxWidth),
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
      ],
    );
  }
}
