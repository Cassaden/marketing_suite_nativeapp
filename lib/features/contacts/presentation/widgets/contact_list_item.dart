import 'package:fluent_ui/fluent_ui.dart';

import 'package:openapi/api.dart' as openapi;

class ContactListItem extends StatelessWidget {
  final openapi.Contact contact;

  const ContactListItem({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Card(
        child: Container(
          alignment: Alignment.centerLeft,
          child: Text(contact.phoneNumber),
        ),
      ),
    );
  }
}
