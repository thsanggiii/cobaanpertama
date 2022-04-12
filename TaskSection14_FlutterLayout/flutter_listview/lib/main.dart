import 'package:flutter/material.dart';
import 'package:flutter_listview/contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:
            10, //elavation digunakan untuk memberi bayangan hitam dibawah AppBar
        backgroundColor: Colors.lightGreen,
        title: const Text(
          'JSON ListView in Flutter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: List.generate(info.length, (index) => contentContact(index)),
      ),
    );
  }

  Widget contentContact(int index) {
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 15,
        ),
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(2),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.lightGreen,
                child: Text(
                  '${info[index].profile}',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${info[index].sender}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '${info[index].number}',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),
                )
              ],
            )
          ],
        ));
  }
}
