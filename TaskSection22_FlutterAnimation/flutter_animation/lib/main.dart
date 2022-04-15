import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              click = !click;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            height: click ? 100 : 300,
            width: click ? 100 : 300,
            curve: Curves.fastOutSlowIn,
            child: CircleAvatar(
              radius : 50,
              backgroundImage: AssetImage('asset/jeff.jpg'),
            ),
          ),
        )
      ),
    );
  }
}