import 'package:flutter/material.dart';

class TravelUIHomePage extends StatefulWidget {
  const TravelUIHomePage({Key? key}) : super(key: key);

  @override
  State<TravelUIHomePage> createState() => _TravelUIHomePageState();
}

class _TravelUIHomePageState extends State<TravelUIHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("Category"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.tune,
            ),
          )
        ],
      ),
    );
  }
}
