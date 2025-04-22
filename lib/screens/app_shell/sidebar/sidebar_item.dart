import 'package:flutter/material.dart';

class AppSidebarItem extends StatelessWidget {
  final Widget icon;
  final String label;
  final int index;

  final Function onDestinationSelected;

  const AppSidebarItem({
    super.key,
    required this.icon,
    required this.label,
    required this.index,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: () => onDestinationSelected(index),
        child: Row(children: [icon, SizedBox(width: 4), Text(label)]),
      ),
    );
  }
}
