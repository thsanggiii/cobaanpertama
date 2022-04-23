import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_taskbloc/bloc/contact_bloc.dart';
import 'package:flutter_taskbloc/create_contact.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<ContactBloc>().add(LoadContact());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact'), centerTitle: true),
      body: BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) {
          if (state is ContactLoading) {
            return const CircularProgressIndicator();
          }
          if (state is ContactLoaded) {
            return ListView.builder(
                itemCount: state.contact.length,
                itemBuilder: (context, int index) {
                  return SizedBox(
                    height: 55,
                    child: ListTile(
                      trailing: InkWell(
                        onTap: () {
                          context.read<ContactBloc>().add(
                              DeleteContact(contact: state.contact[index]));
                        },
                        child:
                            const Icon(Icons.delete_forever, color: Colors.red),
                      ),
                      title: Text(
                        state.contact[index].name,
                        style:
                            const TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      subtitle: Text(
                        state.contact[index].phoneNumber,
                        style:
                            const TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                  );
                });
          } else {
            return Text('Ada sesuatu yang salah :(');
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreateContact()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}