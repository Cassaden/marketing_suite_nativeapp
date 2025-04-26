import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:openapi/api.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  void initState() {
    super.initState();
    const token =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzQ1NzkxNjgzLCJpYXQiOjE3NDU3MDUyODMsImp0aSI6ImYzZTlmYmZlOTIyNTQ1YWFhYTQ3YzI1ODczZDY5MDRkIiwidXNlcl9pZCI6MX0.xqELpW-R72zXxf-hx0_1mF5nGeUJfxA8ft-hXsK9v1I';

    ApiClient apiClient = ApiClient(basePath: 'http://localhost:8000');

    apiClient.addDefaultHeader('Authorization', 'Bearer $token');
    apiClient.addDefaultHeader('Content-Type', 'application/json');

    testApi(apiClient);
  }

  Future<void> testApi(ApiClient apiClient) async {
    final campaignsApiInstance = CampaignsApi();
    final authApiInstance = AuthApi();

    try {
      campaignsApiInstance.campaignsList();
      log((await authApiInstance.authUserProfilesList()).toString());
      final path = r'/auth/login/';

      Object postBody = {"username": "sayo", "password": "password"};

      final queryParams = <QueryParam>[];
      final headerParams = <String, String>{};
      final formParams = <String, String>{};

      const contentTypes = <String>[];

      log(
        (await apiClient.invokeAPI(
          path,
          'POST',
          queryParams,
          postBody,
          headerParams,
          formParams,
          contentTypes.isEmpty ? null : contentTypes.first,
        )).body.toString(),
      );
    } catch (e) {
      log('Exception when calling CampaignsApi->campaignsList: $e\n');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Contacts."));
  }
}
