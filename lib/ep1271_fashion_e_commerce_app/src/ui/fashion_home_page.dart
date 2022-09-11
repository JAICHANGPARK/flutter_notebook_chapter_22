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
        leading: const Icon(Icons.apps),
        title: const Text("Collections"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                height: 120,
                color: Colors.red[50],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                height: 120,
                color: Colors.green[50],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                height: 320,
                color: Colors.green[50],
                child: Row(
                  children: [
                    Expanded(child: Placeholder()),
                    SizedBox(width: 16,),
                    Expanded(child: Placeholder())
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                height: 120,
                color: Colors.red[50],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
