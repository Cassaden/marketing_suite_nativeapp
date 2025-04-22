import 'package:flutter/material.dart';

import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';

class AppSidebarItem extends StatelessWidget {
  final Widget icon;
  final String label;

  const AppSidebarItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(children: [icon, SizedBox(width: 4), Text(label)]),
    );
  }
}

class AppSidebar extends StatefulWidget {
  const AppSidebar({super.key});

  @override
  State<AppSidebar> createState() => _AppSidebarState();
}

class _AppSidebarState extends State<AppSidebar> {
  final double _maxWidth = 256;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: _maxWidth),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                clipBehavior: Clip.none,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
                constraints: BoxConstraints(maxWidth: _maxWidth),
                height: Theme.of(context).appBarTheme.toolbarHeight,
                child: Center(child: Text('App Logo')),
              ),
              Column(
                children: <Widget>[
                  AppSidebarItem(icon: Iconify(Ph.circles_four), label: 'Home'),
                  AppSidebarItem(
                    icon: Iconify(Ph.chat_circle_dots),
                    label: 'Chats',
                  ),
                  AppSidebarItem(
                    icon: Iconify(Ph.address_book),
                    label: 'Contacts',
                  ),
                  AppSidebarItem(
                    icon: Iconify(Ph.megaphone),
                    label: 'Campaigns',
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(maxWidth: _maxWidth),
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
            ],
          ),
          VerticalDivider(width: 1, thickness: 1),
        ],
      ),
    );
  }
}
