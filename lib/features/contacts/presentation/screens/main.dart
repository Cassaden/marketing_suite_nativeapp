import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app/features/contacts/contacts.dart';

class ContactsScreenManager extends StatefulWidget {
  const ContactsScreenManager({super.key});

  @override
  State<ContactsScreenManager> createState() => _ContactsScreenManagerState();
}

class _ContactsScreenManagerState extends State<ContactsScreenManager> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final cubit = ListContactsCubit();
            cubit.initialize();
            return cubit;
          },
        ),
      ],
      child: ListContactsScreen(),
    );
  }
}
