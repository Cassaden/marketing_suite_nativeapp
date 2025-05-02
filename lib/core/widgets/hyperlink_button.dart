import 'package:flutter/material.dart';

import 'package:url_launcher/link.dart';

class HyperLinkButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final String? uri;

  const HyperLinkButton({
    super.key,
    required this.label,
    this.onPressed,
    this.uri,
  }) : assert(
         (onPressed != null) ^ (uri != null),
         "You can only specify one between onPressed and Uri.",
       );

  @override
  Widget build(BuildContext context) {
    return uri == null
        ? _getStyledTextButton(onPressed!)
        : Link(
          uri: Uri.parse(uri!),
          target: LinkTarget.blank,
          builder: (context, followLink) => _getStyledTextButton(followLink),
        );
  }

  TextButton _getStyledTextButton(Function? action) {
    return TextButton(
      onPressed: () => action?.call(),
      child: Text(
        'Register',
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
        ),
      ),
    );
  }
}
