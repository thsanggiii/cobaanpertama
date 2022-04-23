part of 'contact_bloc.dart';

abstract class ContactState extends Equatable {
  const ContactState();

  @override
  List<Object> get props => [];
}

class ContactLoading extends ContactState {}

class ContactLoaded extends ContactState {
  final List<Contact> contact;

  const ContactLoaded({this.contact = const <Contact>[]});

  @override
  List<Object> get props => [contact];
}

class ContactError extends ContactState{}