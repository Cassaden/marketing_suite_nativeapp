import 'package:flutter/material.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      height: Theme.of(context).appBarTheme.toolbarHeight,
      child: Center(child: Text('App Bar Footer')),
    );
  }
}
