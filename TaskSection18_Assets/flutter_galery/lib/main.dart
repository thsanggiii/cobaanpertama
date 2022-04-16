import 'package:flutter/material.dart';

void main() async {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, initialRoute: '/', routes: {
      '/': (context) => RouteOne(),
      '/detail': (context) => RouteTwo(image: '', name: ''),
    }),
  );
}

class PhotoItem {
  final String image;
  final String name;
  PhotoItem(this.image, this.name);
}

class RouteOne extends StatelessWidget {
  final List<PhotoItem> _items = [
    PhotoItem(
        "https://i.pinimg.com/736x/41/9a/30/419a30ca72fc469ba128cdf232fc2463.jpg",
        "Lychee Fresh Squash"),
    PhotoItem(
        "https://i.pinimg.com/originals/22/24/a2/2224a24c41b750dc4736648bcec5ecdc.jpg",
        "Yemek Dessert"),
    PhotoItem(
        "https://i.pinimg.com/564x/fc/2c/78/fc2c78e56ac1cd4f149fdd6dec9ad39f.jpg",
        "Salud Berry"),
    PhotoItem(
        "https://i.pinimg.com/736x/c2/be/27/c2be276449fdafd6d6ab80db1381dd46.jpg",
        "Blueberry Jam"),
    PhotoItem(
        "https://thesmartlocal.com/korea/wp-content/uploads/2020/05/Koreaan-Home-Cafe-Drinks3.jpg",
        "Popcorn Latte"),
    PhotoItem(
        "https://i.pinimg.com/originals/ff/18/6d/ff186d34dde7266329ee7ad213d5598f.png",
        "Charlotte"),
    PhotoItem(
        "https://i.pinimg.com/originals/d4/fe/ff/d4feffae3006253cacf3b4f179dc10e0.jpg",
        "Baldwin Bread"),
    PhotoItem(
        "https://thesmartlocal.com/korea/wp-content/uploads/2020/05/Koreaan-Home-Cafe-Drinks15.jpg",
        "Strawberry Jam"),
    PhotoItem(
        "https://thesmartlocal.com/korea/wp-content/uploads/2020/05/Koreaan-Home-Cafe-Drinks12.jpg",
        "Banan Cafe Latte"),
    PhotoItem(
        "https://i.pinimg.com/originals/f9/f1/e7/f9f1e722c01eb83182adb117026cd1a5.jpg",
        "Banana Choco Bread"),
    PhotoItem(
        "https://i.pinimg.com/736x/17/03/f0/1703f0fdf1fa841869efeb3f4bcb30ba.jpg",
        "Shuminss"),
    PhotoItem(
        "https://p.favim.com/orig/2018/07/19/drinks-aesthetic-cafe-Favim.com-6055653.jpg",
        "Quacker Cafe Latte"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MENU'),
        centerTitle: true
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5
        ),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return new GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RouteTwo(
                      image: _items[index].image, name: _items[index].name),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(_items[index].image),
                ),
              ),
            ),
          );
        },
    ),
    );
  }
}

class RouteTwo extends StatelessWidget {
  final String image;
  final String name;

  RouteTwo({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preview Menu'),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              width: double.infinity,
              child: Image(
                image: NetworkImage(image),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                name,
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}