import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:openapi/api.dart' as openapi;

import 'package:app/features/contacts/contacts.dart';

enum ListContactsStatus { initial, loading, success, error }

class ListContactsException implements Exception {
  String message;
  StackTrace stackTrace;

  ListContactsException(this.message, this.stackTrace);
  ListContactsException.from(Exception e, StackTrace s) : this(e.toString(), s);
}

class ListContactsState {
  ListContactsStatus status;
  List<openapi.Contact> contacts;
  ListContactsException? exception;

  ListContactsState(this.status, {required this.contacts});

  ListContactsState.empty(this.status) : contacts = [];

  ListContactsState.initial() : this(ListContactsStatus.initial, contacts: []);
  ListContactsState.success(this.contacts)
    : status = ListContactsStatus.success;
  ListContactsState.loading() : this(ListContactsStatus.loading, contacts: []);
  ListContactsState.error(this.exception)
    : status = ListContactsStatus.error,
      contacts = [];
}

class ListContactsCubit extends Cubit<ListContactsState> {
  ContactsRepository repository = ContactsRepository();

  ListContactsCubit() : super(ListContactsState.initial());

  Future<void> initialize() async {
    if (!(state.status == ListContactsStatus.initial)) {
      return;
    }

    emit(ListContactsState.loading());
    try {
      List<openapi.Contact> items = await repository.getContactsList();
      log('List contacts success', name: 'contacts');
      emit(ListContactsState.success(items));
    } on Exception catch (e, s) {
      ListContactsException exception = ListContactsException.from(e, s);
      log(
        'An error occurred while listing contact.',
        name: 'contacts',
        stackTrace: s,
        error: e,
      );
      emit(ListContactsState.error(exception));
    }
  }
}
