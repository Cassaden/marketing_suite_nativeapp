import 'package:flutter/material.dart';

import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';

import 'sidebar/sidebar_item.dart';

class AppSidebar extends StatefulWidget {
  final int selectedIndex;
  final double maxWidth;
  final Function onDestinationSelected;

  const AppSidebar({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.maxWidth,
  });

  @override
  State<AppSidebar> createState() => _AppSidebarState();
}

class _AppSidebarState extends State<AppSidebar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: widget.maxWidth),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  clipBehavior: Clip.none,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                  constraints: BoxConstraints(maxWidth: widget.maxWidth - 1),
                  height: Theme.of(context).appBarTheme.toolbarHeight,
                  child: Center(child: Text('App Logo')),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    AppSidebarItem(
                      icon: Iconify(Ph.circles_four),
                      label: 'Home',
                      index: 0,
                      onDestinationSelected: widget.onDestinationSelected,
                    ),
                    AppSidebarItem(
                      icon: Iconify(Ph.chat_circle_dots),
                      label: 'Chats',
                      index: 1,
                      onDestinationSelected: widget.onDestinationSelected,
                    ),
                    AppSidebarItem(
                      icon: Iconify(Ph.address_book),
                      label: 'Contacts',
                      index: 2,
                      onDestinationSelected: widget.onDestinationSelected,
                    ),
                    AppSidebarItem(
                      icon: Iconify(Ph.megaphone),
                      label: 'Campaigns',
                      index: 3,
                      onDestinationSelected: widget.onDestinationSelected,
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(maxWidth: widget.maxWidth - 1),
                    padding: EdgeInsets.all(4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                          child: Text('Sign out'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          VerticalDivider(width: 1, thickness: 1),
        ],
      ),
    );
  }
}
