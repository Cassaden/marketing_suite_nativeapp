import 'package:flutter/material.dart';

import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';

import 'sidebar/sidebar_item.dart';
import 'sidebar/trailing.dart';

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
                  padding: EdgeInsets.all(8),
                  constraints: BoxConstraints(maxWidth: widget.maxWidth - 1),
                  height: Theme.of(context).appBarTheme.toolbarHeight,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey, width: 0.5),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        'App Logo',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    AppSidebarItem(
                      icon: Iconify(Ph.circles_four),
                      label: 'Home',
                      index: 0,
                      selectedIndex: widget.selectedIndex,
                      onDestinationSelected: widget.onDestinationSelected,
                    ),
                    AppSidebarItem(
                      icon: Iconify(Ph.chat_circle_dots),
                      label: 'Chats',
                      index: 1,
                      selectedIndex: widget.selectedIndex,
                      onDestinationSelected: widget.onDestinationSelected,
                    ),
                    AppSidebarItem(
                      icon: Iconify(Ph.address_book),
                      label: 'Contacts',
                      index: 2,
                      selectedIndex: widget.selectedIndex,
                      onDestinationSelected: widget.onDestinationSelected,
                    ),
                    AppSidebarItem(
                      icon: Iconify(Ph.megaphone),
                      label: 'Campaigns',
                      index: 3,
                      selectedIndex: widget.selectedIndex,
                      onDestinationSelected: widget.onDestinationSelected,
                    ),
                  ],
                ),
                Expanded(child: SidebarTrailing(maxWidth: widget.maxWidth)),
              ],
            ),
          ),
          VerticalDivider(width: 0.5, thickness: 0.5),
        ],
      ),
    );
  }
}
