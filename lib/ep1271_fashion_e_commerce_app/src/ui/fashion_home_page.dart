import 'package:flutter/material.dart';


class FashionHomePage extends StatefulWidget {
  const FashionHomePage({Key? key}) : super(key: key);

  @override
  State<FashionHomePage> createState() => _FashionHomePageState();
}

class _FashionHomePageState extends State<FashionHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.apps),
        title: Text("Collections"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined)),
        ],
      ),
    );
  }
}
