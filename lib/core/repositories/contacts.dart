import 'package:openapi/api.dart' as openapi;

import 'package:app/core/services/api.dart';

class ContactsRepository {
  Future<List<openapi.Contact>> getContactsList() async {
    openapi.ApiClient client = await ApiClient.getInstance();
    List<openapi.Contact> contacts =
        await openapi.ContactsApi(client).contactsList() ?? [];

    return contacts;
  }
}
