part of 'contact_bloc.dart';

abstract class ContactEvent extends Equatable {
  const ContactEvent();

  @override
  List<Object> get props => [];
}

class LoadContact extends ContactEvent {
  final List<Contact> contact;
  const LoadContact({this.contact = const <Contact>[]});

  @override
  List<Object> get props => [contact];
}

class AddContact extends ContactEvent {
  final Contact contact;

  const AddContact({required this.contact});

  @override
  List<Object> get props => [contact];
}

class DeleteContact extends ContactEvent {
   final Contact contact;

  const DeleteContact({required this.contact});
  
  @override
  List<Object> get props => [contact];
}