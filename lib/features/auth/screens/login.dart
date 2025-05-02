import 'package:flutter/material.dart';

import 'package:app/core/widgets/hyperlink_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card.outlined(
        child: Column(
          children: [
            Column(children: [TextField(), SizedBox(height: 8), TextField()]),
            Column(
              children: [
                FilledButton(onPressed: () {}, child: Text('Login')),
                SizedBox(height: 4),
                Align(
                  alignment: Alignment.centerRight,
                  child: HyperLinkButton(label: 'Register', onPressed: () {}),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
