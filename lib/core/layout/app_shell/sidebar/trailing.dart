import 'package:flutter/material.dart';

class SidebarTrailing extends StatefulWidget {
  final double maxWidth;

  const SidebarTrailing({super.key, required this.maxWidth});

  @override
  State<SidebarTrailing> createState() => _SidebarTrailingState();
}

class _SidebarTrailingState extends State<SidebarTrailing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(maxWidth: widget.maxWidth - 1),
      padding: EdgeInsets.all(4),
      alignment: Alignment.bottomCenter,
      child: Container(
        constraints: BoxConstraints(
          maxHeight: Theme.of(context).appBarTheme.toolbarHeight!,
        ),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 0.5, color: Colors.grey),
        ),
        child: Row(
          children: [
            CircleAvatar(backgroundColor: Theme.of(context).primaryColor),
            SizedBox(width: 4),
            Expanded(child: Text('Profile')),
            SizedBox(width: 2),
            VerticalDivider(),
            SizedBox(width: 2),
            IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
