import 'package:equatable/equatable.dart';

class Contact extends Equatable {
  String name;
  String phoneNumber;

  Contact({
    required this.name,
    required this.phoneNumber,
  });

  @override
  List<Object?> get props => [name, phoneNumber];

  static List<Contact> contact = [
    
  ];
}