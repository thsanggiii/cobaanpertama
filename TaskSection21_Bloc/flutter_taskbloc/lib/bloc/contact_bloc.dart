import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_taskbloc/models/contact.dart';
part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  List<Contact> contact = [];
  ContactBloc() : super(ContactLoading()) {
    on<LoadContact>(_onLoadContact);
    on<AddContact>(_onAddContact);
    on<DeleteContact>(_onDeleteContact);
  }
  void _onLoadContact(LoadContact event, Emitter<ContactState> emit) {
    emit(ContactLoaded(contact: event.contact));
  }

  void _onAddContact(AddContact event, Emitter<ContactState> emit) {
    if (event.contact.name == 'panca') {
      emit(ContactError());
    } else {
      contact.add(event.contact);
      emit(ContactLoaded(contact: contact));
    }
  }

  void _onDeleteContact(DeleteContact event, Emitter<ContactState> emit) {
    List<Contact> contacts = contact.where((contact) {
      return contact.name != event.contact.name;
    }).toList();
    emit(ContactLoaded(contact: contacts));
  }
}