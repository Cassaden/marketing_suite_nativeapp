import 'dart:developer';
import 'package:app/core/services/api.dart';

import 'package:flutter/material.dart';

import 'package:openapi/api.dart' as openapi;

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  List<openapi.Contact> _contacts = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Center(child: CircularProgressIndicator())
        : Center(
          child: ListView.separated(
            itemCount: _contacts.length,
            itemBuilder: (BuildContext context, int index) {
              return Text(_contacts[index].phoneNumber);
            },
            separatorBuilder: (context, index) => SizedBox(height: 4),
          ),
        );
  }

  Future<void> _initialize() async {
    try {
      List<openapi.Contact> contacts =
          await openapi.ContactsApi(ApiClient.getInstance()).contactsList() ??
          [];

      setState(() => _contacts = contacts);
      setState(() => _isLoading = false);
    } on openapi.ApiException catch (error, stackTrace) {
      log('$error \n $stackTrace');
    }
  }
}
