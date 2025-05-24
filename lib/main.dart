import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(
    () => runApp(App()),
    (e, s) => log(
      "Caught general error that wasn't handled correctly inside the app.",
      name: 'main',
      error: e,
      stackTrace: s,
    ),
  );
}
