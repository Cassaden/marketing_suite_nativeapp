import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app/features/contacts/presentation/widgets/contact_list_item.dart';
import 'package:app/features/contacts/data/blocs/list_contacts_cubit.dart';

class ListContactsScreen extends StatefulWidget {
  const ListContactsScreen({super.key});

  @override
  State<ListContactsScreen> createState() => _ListContactsScreenState();
}

class _ListContactsScreenState extends State<ListContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListContactsCubit, ListContactsState>(
      builder: (context, state) {
        switch (state.status) {
          case ListContactsStatus.initial:
            {
              return Center(child: CircularProgressIndicator());
            }
          case ListContactsStatus.loading:
            {
              return Center(child: CircularProgressIndicator());
            }
          case ListContactsStatus.success:
            {
              return ListView.separated(
                itemCount: state.contacts.length,
                separatorBuilder: (context, index) => SizedBox(height: 8),
                itemBuilder:
                    (context, index) =>
                        ContactListItem(contact: state.contacts[index]),
              );
            }
          case ListContactsStatus.error:
            {
              return Center(
                child: Text(
                  "Couldn't load contacts due to error: ${state.exception}",
                ),
              );
            }
        }
      },
    );
  }
}
