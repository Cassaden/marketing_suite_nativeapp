import 'package:flutter/material.dart';

extension ErrorDialogExtension on BuildContext {
  void showErrorDialog(
    String message, {
    String title = 'Error',
    String? stackTrace,
    Function? onDismissError,
    String onDismissErrorLabel = 'Dismiss',
    Function? onHandleError,
    String onHandleErrorLabel = 'Handle',
  }) {
    showDialog(
      context: this,
      builder:
          (context) => AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                onPressed:
                    onDismissError != null
                        ? onDismissError()
                        : () => Navigator.pop(context),
                child: Text(onDismissErrorLabel),
              ),
              if (onHandleError != null)
                TextButton(
                  onPressed: onHandleError(),
                  child: Text(onHandleErrorLabel),
                ),
            ],
          ),
    );
  }
}
